namespace eval ::gi { proc addActions {args} { } }
namespace eval ::gi { proc remove {args} { } }
if { ![info exists ::saCCInitSourced] } {
    set ::saCCInitSourced 1
}
namespace eval :: {
   db::setPrefValue saAutoMigrateResults -value 0
   db::setPrefValue saEnableDeviceTerminalVoltageProbing  -value true
   db::setPrefValue xtIncrementalNetlisting -value true
   set ::tcl_precision 15
   set ::sa::_netlistFlow 0
    set session [ss::getActiveSession]
    db::setAttr name -of $session -value saeSession1
    sa::_utils::setUniqueSessionName -of $session -value saeSession1
    set ::sa::_simServer::_simServerId stb.gmid.gmid_nfet_3v3.schematic.session1
    ::sa::_simServer::_setInfoByKeyInSimServerShell GUI_PID 307650
    db::setPrefValue saPrintLoadingStartupFilesErrors -value false
    sa::_simServer::runSimulationInServer /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session1
}
