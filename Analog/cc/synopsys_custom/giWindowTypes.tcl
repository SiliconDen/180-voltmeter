set wt [gi::getWindowTypes deBookmarkManager]
db::setAttr wt.geometry -value "530x400"
db::setAttr wt.maximized -value "false"
set wt [gi::getWindowTypes dbFindReplace]
db::setAttr wt.geometry -value "580x620"
db::setAttr wt.maximized -value "false"
set wt [gi::getWindowTypes dmLibraryManager]
db::setAttr wt.geometry -value "1910x975+5+52"
db::setAttr wt.maximized -value "false"
set wt [gi::getWindowTypes saAnalyzeResults]
db::setAttr wt.geometry -value "810x836+555+109"
db::setAttr wt.maximized -value "false"
set wt [gi::getWindowTypes embedWaveViewer]
db::setAttr wt.geometry -value "1910x975+5+52"
db::setAttr wt.maximized -value "false"
unset wt
