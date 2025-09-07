gi::pressButton {/scroll/scrollArea/scrollAreaInnerWidget/applications/deOpenargershmtbmainopampdiffmodegain} -in [gi::getWindows 1]
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
::sa::_testSuite::isShowRunConfirmation 2 "isa::netlistAndRun" overwrite
gi::setActiveDialog [gi::getDialogs {saRunConfirmationDialog} -parent [gi::getWindows 2]]
db::setAttr geometry -of [gi::getDialogs {saRunConfirmationDialog} -parent [gi::getWindows 2]] -value 400x140+749+381
gi::setField {showAgain} -value {true} -in [gi::getDialogs {saRunConfirmationDialog} -parent [gi::getWindows 2]]
gi::pressButton {yes} -in [gi::getDialogs {saRunConfirmationDialog} -parent [gi::getWindows 2]]
gi::setActiveDialog [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]]
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 532x66+709+465
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 548x66+709+465
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 533x66+709+465
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 461x66+709+465
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 517x70+709+465
db::setAttr geometry -of [gi::getFrames 1] -value 1040x824+613+98
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::executeAction {menuPreShow} -in [gi::getWindows 2]
sa::showEnvironmentOptions -parent 2
gi::setActiveDialog [gi::getDialogs {saEnvOptionsDialog} -parent [gi::getWindows 2]]
db::setAttr geometry -of [gi::getDialogs {saEnvOptionsDialog} -parent [gi::getWindows 2]] -value 445x368+1097+416
db::setAttr geometry -of [gi::getDialogs {saEnvOptionsDialog} -parent [gi::getWindows 2]] -value 644x399+573+104
db::setAttr geometry -of [gi::getDialogs {saEnvOptionsDialog} -parent [gi::getWindows 2]] -value 638x368+579+144
db::setAttr geometry -of [gi::getDialogs {saEnvOptionsDialog} -parent [gi::getWindows 2]] -value 561x368+656+158
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::setActiveWindow 5
gi::setActiveWindow 5 -raise true
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
db::setAttr geometry -of [gi::getFrames 1] -value 1040x824+572+103
gi::setActiveWindow 1
gi::setActiveWindow 1 -raise true
gi::closeWindows [gi::getDialogs {saEnvOptionsDialog} -parent [gi::getWindows 2]]
gi::pressButton {/scroll/scrollArea/scrollAreaInnerWidget/applications/deOpenargershmmainotacompensatedschematic} -in [gi::getWindows 1]
db::setAttr dockSize -of [gi::getAssistants giConsole -from [gi::getWindows 6]] -value 701x140
db::setAttr dockSize -of [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]] -value 290x671
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {2.5875 2.10625}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {2.5875 2.10625}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {2.5875 2.10625}
db::setAttr maximized -of [gi::getFrames 1] -value true
db::setAttr dockSize -of [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]] -value 290x846
db::setAttr dockSize -of [gi::getAssistants giConsole -from [gi::getWindows 6]] -value 1571x140
db::setAttr geometry -of [gi::getFrames 1] -value 1910x999+5+28
de::fit -window 6 -fitEdit true
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {12.28125 1.49375}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {12.28125 1.49375}
de::deselectAll [db::getNext [de::getContexts -window 6]]
de::select [de::getActiveFigure [gi::getWindows 6] -point {12.10625 1.90625} -index 0 -intent none]
gi::executeAction {sePropertyEditorToggle} -in [gi::getWindows 6]
db::setAttr dockSize -of [gi::getAssistants giConsole -from [gi::getWindows 6]] -value 1867x140
gi::executeAction {sePropertyEditorToggle} -in [gi::getWindows 6]
db::setAttr dockSize -of [gi::getAssistants giConsole -from [gi::getWindows 6]] -value 1571x140
gi::setItemSelection {parameters0} -index {W,all} -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
gi::setCurrentIndex {parameters0} -index {W,Value} -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
gi::setField {parameters0} -value {6u} -index {W,Value} -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
gi::setItemSelection {parameters0} -index {L,all} -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
gi::setCurrentIndex {parameters0} -index {L,Value} -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
gi::setField {parameters0} -value {6u} -index {L,Value} -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
gi::executeAction dePropertyEditorApplyChanges -in [gi::getAssistants dePropertyEditor -from [gi::getWindows 6]]
de::deselectAll [db::getNext [de::getContexts -window 6]]
de::deselectAllLogic -context [de::getContexts -filter {%editDesign==[db::getAttr editDesign -of [db::getNext [de::getContexts -window 6]]]}]
 ::startup::_checkAndSave 
 ::startup::_checkAndSave 
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {9.2 1.71875}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {9.2 1.71875}
de::zoom -window [gi::getWindows 6] -factor [expr {1.0/[db::getPrefValue deCanvasMouseZoomFactor]}] -center {9.2 1.71875}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {9.45 2.91875}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {9.45 2.91875}
de::zoom -window [gi::getWindows 6] -factor [db::getPrefValue deCanvasMouseZoomFactor] -center {9.45 2.91875}
 ::startup::_checkAndSave 
gi::setCurrentIndex {outputsTable} -index {0,0} -in [gi::getWindows 2]
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::setCurrentIndex {variablesTable} -index {18,0} -in [gi::getWindows 2]
gi::setItemSelection {variablesTable} -index {18,0} -in [gi::getWindows 2]
gi::setField {variablesTable} -index {18,0} -value {L} -in [gi::getWindows 2]
gi::setCurrentIndex {variablesTable} -index {18,1} -in [gi::getWindows 2]
gi::setItemSelection {variablesTable} -index {18,1} -in [gi::getWindows 2]
gi::setCurrentIndex {variablesTable} -index {19,0} -in [gi::getWindows 2]
gi::setItemSelection {variablesTable} -index {} -in [gi::getWindows 2]
gi::setField {variablesTable} -index {19,0} -value {} -in [gi::getWindows 2]
gi::setCurrentIndex {variablesTable} -index {18,0} -in [gi::getWindows 2]
gi::setItemSelection {variablesTable} -index {18,0} -in [gi::getWindows 2]
gi::setField {variablesTable} -index {18,0} -value {L} -in [gi::getWindows 2]
gi::setCurrentIndex {variablesTable} -index {18,1} -in [gi::getWindows 2]
gi::setItemSelection {variablesTable} -index {18,1} -in [gi::getWindows 2]
gi::setActiveDialog [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]]
db::setAttr geometry -of [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]] -value 549x347+930+449
db::setAttr geometry -of [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]] -value 708x416+342+90
db::setAttr geometry -of [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]] -value 708x416+430+203
gi::setField {/allSweeps/treeWidget} -index {0,2} -value {false} -in [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]]
gi::pressButton {/allSweeps/treeWidgetDelete} -in [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]]
gi::pressButton {/ok} -in [gi::getDialogs {saParametricAnalyses} -parent [gi::getWindows 2]]
gi::setCurrentIndex {variablesTable} -index {0,0} -in [gi::getWindows 2]
gi::setCurrentIndex {variablesTable} -index {18,1} -in [gi::getWindows 2]
gi::setItemSelection {variablesTable} -index {18,1} -in [gi::getWindows 2]
::sa::_testSuite::isShowRunConfirmation 2 "isa::netlistAndRun" overwrite
gi::setActiveDialog [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]]
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 532x66+710+489
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 548x66+710+489
db::setAttr geometry -of [gi::getDialogs {xtBgNRunProgress} -parent [gi::getWindows 2]] -value 513x70+710+489
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::setActiveWindow 6
gi::setActiveWindow 6 -raise true
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::setActiveWindow 5
gi::setActiveWindow 5 -raise true
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::pressButton {plotButton} -in [gi::getWindows 2]
gi::setField {plotModes} -value {new} -in [gi::getWindows 2]
gi::pressButton {plotButton} -in [gi::getWindows 2]
gi::setActiveWindow 5
gi::setActiveWindow 5 -raise true
gi::setActiveWindow 2
gi::setActiveWindow 2 -raise true
gi::executeAction giCloseWindow -in [gi::getWindows 2]
gi::executeAction giCloseWindow -in [gi::getWindows 6]
gi::executeAction giCloseWindow -in [gi::getWindows 1]
gi::executeAction giCloseWindow -in [gi::getWindows 3]
