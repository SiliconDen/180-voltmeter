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
    db::setAttr name -of $session -value saeSession0
    sa::_utils::setUniqueSessionName -of $session -value saeSession0
    set ::sa::_simServer::_simServerId stb.integrator.tb_main_opamp.schematic.session1
    ::sa::_simServer::_setInfoByKeyInSimServerShell GUI_PID 3554104
    set ::env(DISPLAY) claws-compute3.ece.ncsu.edu:107
    set ::env(SYNOPSYS_CUSTOM_SERVER_CC) claws-compute3.ece.ncsu.edu:44743
    db::setPrefValue saPrintLoadingStartupFilesErrors -value false
    db::setPrefValue saPrintBgNetlistingMessages -value false
    sa::_simServer::runSimulationInServer /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.integrator.tb_main_opamp.schematic.session1
}
