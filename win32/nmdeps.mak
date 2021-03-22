# Created by DepGen.py. To recreate, run DepGen.py.
$(DIR_O)/HanjaDic.obj: \
	HanjaDic.cxx \
	../src/UniConversion.h \
	HanjaDic.h
$(DIR_O)/PlatWin.obj: \
	PlatWin.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/XPM.h \
	../src/UniConversion.h \
	../src/DBCS.h \
	../src/FontQuality.h \
	PlatWin.h
$(DIR_O)/ScintillaDLL.obj: \
	ScintillaDLL.cxx \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	ScintillaWin.h
$(DIR_O)/ScintillaWin.obj: \
	ScintillaWin.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/CallTip.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/CaseConvert.h \
	../src/UniConversion.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h \
	../src/MarginView.h \
	../src/EditView.h \
	../src/Editor.h \
	../src/ElapsedPeriod.h \
	../src/AutoComplete.h \
	../src/ScintillaBase.h \
	PlatWin.h \
	HanjaDic.h \
	ScintillaWin.h
$(DIR_O)/AutoComplete.obj: \
	../src/AutoComplete.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/CharacterSet.h \
	../src/Position.h \
	../src/AutoComplete.h
$(DIR_O)/CallTip.obj: \
	../src/CallTip.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/CallTip.h
$(DIR_O)/CaseConvert.obj: \
	../src/CaseConvert.cxx \
	../src/CaseConvert.h \
	../src/UniConversion.h
$(DIR_O)/CaseFolder.obj: \
	../src/CaseFolder.cxx \
	../src/CaseFolder.h \
	../src/CaseConvert.h
$(DIR_O)/CellBuffer.obj: \
	../src/CellBuffer.cxx \
	../src/Debugging.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/CellBuffer.h \
	../src/UniConversion.h
$(DIR_O)/CharacterCategory.obj: \
	../src/CharacterCategory.cxx \
	../src/CharacterCategory.h
$(DIR_O)/CharacterSet.obj: \
	../src/CharacterSet.cxx \
	../src/CharacterSet.h
$(DIR_O)/CharClassify.obj: \
	../src/CharClassify.cxx \
	../src/CharacterSet.h \
	../src/CharClassify.h
$(DIR_O)/ContractionState.obj: \
	../src/ContractionState.cxx \
	../src/Debugging.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/SparseVector.h \
	../src/ContractionState.h
$(DIR_O)/DBCS.obj: \
	../src/DBCS.cxx \
	../src/DBCS.h
$(DIR_O)/Decoration.obj: \
	../src/Decoration.cxx \
	../src/Debugging.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/Decoration.h
$(DIR_O)/Document.obj: \
	../src/Document.cxx \
	../src/Debugging.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterSet.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/CellBuffer.h \
	../src/PerLine.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/RESearch.h \
	../src/UniConversion.h \
	../src/ElapsedPeriod.h
$(DIR_O)/EditModel.obj: \
	../src/EditModel.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/UniConversion.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h
$(DIR_O)/Editor.obj: \
	../src/Editor.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterSet.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/PerLine.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/UniConversion.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h \
	../src/MarginView.h \
	../src/EditView.h \
	../src/Editor.h \
	../src/ElapsedPeriod.h
$(DIR_O)/EditView.obj: \
	../src/EditView.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterSet.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/PerLine.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/UniConversion.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h \
	../src/MarginView.h \
	../src/EditView.h \
	../src/ElapsedPeriod.h
$(DIR_O)/Geometry.obj: \
	../src/Geometry.cxx \
	../src/Geometry.h
$(DIR_O)/Indicator.obj: \
	../src/Indicator.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Indicator.h \
	../src/XPM.h
$(DIR_O)/KeyMap.obj: \
	../src/KeyMap.cxx \
	../src/Debugging.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/KeyMap.h
$(DIR_O)/LineMarker.obj: \
	../src/LineMarker.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/XPM.h \
	../src/LineMarker.h
$(DIR_O)/MarginView.obj: \
	../src/MarginView.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/IntegerRectangle.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/UniConversion.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h \
	../src/MarginView.h \
	../src/EditView.h
$(DIR_O)/PerLine.obj: \
	../src/PerLine.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/CellBuffer.h \
	../src/PerLine.h
$(DIR_O)/PositionCache.obj: \
	../src/PositionCache.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/UniConversion.h \
	../src/Selection.h \
	../src/PositionCache.h
$(DIR_O)/RESearch.obj: \
	../src/RESearch.cxx \
	../src/Position.h \
	../src/CharClassify.h \
	../src/RESearch.h
$(DIR_O)/RunStyles.obj: \
	../src/RunStyles.cxx \
	../src/Debugging.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h
$(DIR_O)/ScintillaBase.obj: \
	../src/ScintillaBase.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/CallTip.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h \
	../src/MarginView.h \
	../src/EditView.h \
	../src/Editor.h \
	../src/AutoComplete.h \
	../src/ScintillaBase.h
$(DIR_O)/ScintillaBaseL.obj: \
	../src/ScintillaBase.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/ILoader.h \
	../include/Sci_Position.h \
	../include/ILexer.h \
	../include/Scintilla.h \
	../src/CharacterCategory.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/SplitVector.h \
	../src/Partitioning.h \
	../src/RunStyles.h \
	../src/ContractionState.h \
	../src/CellBuffer.h \
	../src/CallTip.h \
	../src/KeyMap.h \
	../src/Indicator.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h \
	../src/CharClassify.h \
	../src/Decoration.h \
	../src/CaseFolder.h \
	../src/Document.h \
	../src/Selection.h \
	../src/PositionCache.h \
	../src/EditModel.h \
	../src/MarginView.h \
	../src/EditView.h \
	../src/Editor.h \
	../src/AutoComplete.h \
	../src/ScintillaBase.h
$(DIR_O)/Selection.obj: \
	../src/Selection.cxx \
	../src/Debugging.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/Selection.h
$(DIR_O)/Style.obj: \
	../src/Style.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Style.h
$(DIR_O)/UniConversion.obj: \
	../src/UniConversion.cxx \
	../src/UniConversion.h
$(DIR_O)/UniqueString.obj: \
	../src/UniqueString.cxx \
	../src/UniqueString.h
$(DIR_O)/ViewStyle.obj: \
	../src/ViewStyle.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../include/Scintilla.h \
	../include/Sci_Position.h \
	../src/Position.h \
	../src/UniqueString.h \
	../src/Indicator.h \
	../src/XPM.h \
	../src/LineMarker.h \
	../src/Style.h \
	../src/ViewStyle.h
$(DIR_O)/XPM.obj: \
	../src/XPM.cxx \
	../src/Debugging.h \
	../src/Geometry.h \
	../src/Platform.h \
	../src/XPM.h
