namespace eval :: { 
namespace eval ::gi { proc addActions {args} { } }
namespace eval ::gi { proc remove {args} { } }
if { ![info exists ::saCCInitSourced] } {
    set ::saCCInitSourced 1
    catch { source /mnt/apps/public/COE/synopsys_apps/primewave/W-2024.09-SP1-2/auxx/primewave/init.tcl }
}
   db::setPrefValue saAutoMigrateResults -value 0
   db::setPrefValue saEnableDeviceTerminalVoltageProbing  -value true
   set ::tcl_precision 15
   set ::sa::_netlistFlow 0
   set session [ss::getActiveSession]
   db::setAttr session.preRunProcsSourceFile -value ""
   sa::showPreRunProcs::_sourcePreRunSourceFile $session
set ::wf::WaveView::_nwWaveviewSharedLicKey "-unique_string 424077b79e1069eea5061164a898209ca82bbda58325a9da73eb6ddaf230aa49f93a5ef511cc936b8d23ebfbba818a23159a0b8276fa4eb0 -lic_type 2"
set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_LIBDEFS) /home/argershm/180-voltmeter/Analog/cc/lib.defs
catch { set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_WINID)  }
set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_TEST_SUITE_INFO) integrator:tb_main_opamp:schematic
set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_DSPF_OPTIONS) "{hierDelim==|}||{termDelim==:}||{fingerChar==@}||{multiplierString==_nettran_}||{aggregateCurrent==1}||{MOSTermNames==d g s b}||{MOSTermOrder==D G S B}||{MOSTermDspfNames==DRC GATE SRC BULK}||{firstChars==XM}||{probeHierDelim==/}||{caseSensitive==1}||{firstChar==M}||{hierPrefix==X}||{nodePrefix==M}||{plotTermVoltageForNet==0}||{mapNetToMosTerminal==}||{mapSlashDelimToDot==1}||{probePortCurrent==1}||{busBit==\[\]}||{removeNodePrefix==1}||{nlConDelim==.}||{mosModelType==auto}||{keepSchName==0}"
::xt::job_cdpl::_nwSetKeysForLastRun [list /home/argershm/180-voltmeter/Analog/cc/simulation/integrator,tb_main_opamp,schematic/history_1/simulation/diff_mode_gain/PrimeSimSPICE/nominal/results]
catch { unset ::env(SYNOPSYS_CUSTOM_LOCAL_BGSIM) }

if {[info exists ::env(SYNOPSYS_PRIMEWAVE_SERVER)]} {
    set ::env(SYNOPSYS_PRIMEWAVE_SERVER) $::env(SYNOPSYS_CUSTOM_SERVER)
}

}
