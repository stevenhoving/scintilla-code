// Scintilla source code edit control
/** @file HanjaDic.cxx
 ** Korean Hanja Dictionary
 ** Convert between Korean Hanja and Hangul by COM interface.
 **/
// Copyright 2015 by Neil Hodgson <neilh@scintilla.org>
// The License.txt file describes the conditions under which this software may be distributed.

#include <string>
#include <string_view>
#include <memory>

#define WIN32_LEAN_AND_MEAN 1
#include <windows.h>
#include <ole2.h>

#include "HanjaDic.h"

namespace Scintilla::Internal::HanjaDict {

struct UnknownReleaser {
	// Called by unique_ptr to destroy/free the resource
	template <class T>
	void operator()(T *pUnknown) noexcept {
		// same as ReleaseUnknown() in PlatWin.h
		try {
			pUnknown->Release();
		} catch (...) {
			// IUnknown::Release must not throw, ignore if it does.
		}
	}
};

struct BSTRDeleter {
	void operator()(BSTR bstr) const noexcept {
		SysFreeString(bstr);
	}
};

using UniqueBSTR = std::unique_ptr<OLECHAR[], BSTRDeleter>;

interface IRadical;
interface IHanja;
interface IStrokes;

enum HANJA_TYPE { HANJA_UNKNOWN = 0, HANJA_K0 = 1, HANJA_K1 = 2, HANJA_OTHER = 3 };

interface IHanjaDic : IUnknown {
	STDMETHOD(OpenMainDic)();
	STDMETHOD(CloseMainDic)();
	STDMETHOD(GetHanjaWords)(BSTR bstrHangul, SAFEARRAY* ppsaHanja, VARIANT_BOOL* pfFound);
	STDMETHOD(GetHanjaChars)(unsigned short wchHangul, BSTR* pbstrHanjaChars, VARIANT_BOOL* pfFound);
	STDMETHOD(HanjaToHangul)(BSTR bstrHanja, BSTR* pbstrHangul);
	STDMETHOD(GetHanjaType)(unsigned short wchHanja, HANJA_TYPE* pHanjaType);
	STDMETHOD(GetHanjaSense)(unsigned short wchHanja, BSTR* pbstrSense);
	STDMETHOD(GetRadicalID)(short SeqNumOfRadical, short* pRadicalID, unsigned short* pwchRadical);
	STDMETHOD(GetRadical)(short nRadicalID, IRadical** ppIRadical);
	STDMETHOD(RadicalIDToHanja)(short nRadicalID, unsigned short* pwchRadical);
	STDMETHOD(GetHanja)(unsigned short wchHanja, IHanja** ppIHanja);
	STDMETHOD(GetStrokes)(short nStrokes, IStrokes** ppIStrokes);
	STDMETHOD(OpenDefaultCustomDic)();
	STDMETHOD(OpenCustomDic)(BSTR bstrPath, long* plUdr);
	STDMETHOD(CloseDefaultCustomDic)();
	STDMETHOD(CloseCustomDic)(long lUdr);
	STDMETHOD(CloseAllCustomDics)();
	STDMETHOD(GetDefaultCustomHanjaWords)(BSTR bstrHangul, SAFEARRAY** ppsaHanja, VARIANT_BOOL* pfFound);
	STDMETHOD(GetCustomHanjaWords)(long lUdr, BSTR bstrHangul, SAFEARRAY** ppsaHanja, VARIANT_BOOL* pfFound);
	STDMETHOD(PutDefaultCustomHanjaWord)(BSTR bstrHangul, BSTR bstrHanja);
	STDMETHOD(PutCustomHanjaWord)(long lUdr, BSTR bstrHangul, BSTR bstrHanja);
	STDMETHOD(MaxNumOfRadicals)(short* pVal);
	STDMETHOD(MaxNumOfStrokes)(short* pVal);
	STDMETHOD(DefaultCustomDic)(long* pVal);
	STDMETHOD(DefaultCustomDic)(long pVal);
	STDMETHOD(MaxHanjaType)(HANJA_TYPE* pHanjaType);
	STDMETHOD(MaxHanjaType)(HANJA_TYPE pHanjaType);
};

extern "C" const GUID __declspec(selectany) IID_IHanjaDic =
{ 0xad75f3ac, 0x18cd, 0x48c6, { 0xa2, 0x7d, 0xf1, 0xe9, 0xa7, 0xdc, 0xe4, 0x32 } };

class HanjaDic {
	std::unique_ptr<IHanjaDic, UnknownReleaser> HJinterface;

	bool OpenHanjaDic(LPCOLESTR lpszProgID) noexcept {
		CLSID CLSID_HanjaDic;
		HRESULT hr = CLSIDFromProgID(lpszProgID, &CLSID_HanjaDic);
		if (SUCCEEDED(hr)) {
			IHanjaDic *instance = nullptr;
			hr = CoCreateInstance(CLSID_HanjaDic, nullptr,
				CLSCTX_INPROC_SERVER, IID_IHanjaDic,
				(LPVOID *)&instance);
			if (SUCCEEDED(hr)) {
				HJinterface.reset(instance);
				hr = instance->OpenMainDic();
				return SUCCEEDED(hr);
			}
		}
		return false;
	}

public:
	bool Open() noexcept {
		return OpenHanjaDic(OLESTR("imkrhjd.hanjadic"))
			|| OpenHanjaDic(OLESTR("mshjdic.hanjadic"));
	}

	void Close() const noexcept {
		HJinterface->CloseMainDic();
	}

	bool IsHanja(wchar_t hanja) const noexcept {
		HANJA_TYPE hanjaType = HANJA_UNKNOWN;
		const HRESULT hr = HJinterface->GetHanjaType(hanja, &hanjaType);
		return SUCCEEDED(hr) && hanjaType > HANJA_UNKNOWN;
	}

	bool HanjaToHangul(BSTR bstrHanja, UniqueBSTR &bstrHangul) const noexcept {
		BSTR result = nullptr;
		const HRESULT hr = HJinterface->HanjaToHangul(bstrHanja, &result);
		bstrHangul.reset(result);
		return SUCCEEDED(hr);
	}
};

bool GetHangulOfHanja(std::wstring &inout) noexcept {
	// Convert every hanja to hangul.
	// Return whether any character been converted.
	// Hanja linked to different notes in Hangul have different codes,
	// so current character based conversion is enough.
	// great thanks for BLUEnLIVE.
	bool changed = false;
	HanjaDic dict;
	if (dict.Open()) {
		for (wchar_t &character : inout) {
			if (dict.IsHanja(character)) { // Pass hanja only!
				const UniqueBSTR bstrHanja{SysAllocStringLen(&character, 1)};
				UniqueBSTR bstrHangul;
				if (dict.HanjaToHangul(bstrHanja.get(), bstrHangul)) {
					changed = true;
					character = bstrHangul[0];
				}
			}
		}
		dict.Close();
	}
	return changed;
}

}
