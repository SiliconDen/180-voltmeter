namespace eval :: {
   set session [ss::getActiveSession]
   db::setAttr session.preRunProcsSourceFile -value ""
   sa::showPreRunProcs::_sourcePreRunSourceFile $session
   set tb [ss::getActiveTestbench]
   db::setAttr simulator -of $tb -value PrimeSim
   sa::loadState PrimeSim_default -testbench $tb -use directory -rootPath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1 -resetCollection true -loadDesign true -loadSimulator true -loadResultsDir true
   db::setAttr migratedSimulator -of $tb -value "PrimeSim"
   db::setAttr name -of $tb -value PrimeSim_default
   db::setAttr name -of $session -value saeSession2
   sa::_utils::setUniqueSessionName -of $session -value saeSession2
   set sessionScope [::sa::_utils::getSessionScope [::ss::getActiveSession]]
   db::loadPrefs [db::getPrefs nl* -includeDeprecated 0 -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_coreUtils::getSavedNlPrefsFileName]
   db::loadPrefs [db::getPrefs seCheck* -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_coreUtils::getSavedNlPrefsFileName]
   db::loadPrefs [db::getPrefs dbParamTrim* -includeDeprecated 0 -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::loadPrefs [db::getPrefs sa* -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::setPrefValue saJobSpecificFile -value {}
   ss::setJobOptions {} -isGlobal 1
   db::loadPrefs [db::getPrefs xtLSFUseApplicationProfilesAsQueues -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::loadPrefs [::sa::_testSuite::_uniGetXtPrefByFilter ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::setPrefValue saBackgroundNetlist -value 0 -scope $sessionScope
catch { ::sa::_utils::DSPF::uniSetDSPFOptions "{hierDelim==|}||{termDelim==:}||{fingerChar==@}||{multiplierString==_nettran_}||{aggregateCurrent==1}||{MOSTermNames==d g s b}||{MOSTermOrder==D G S B}||{MOSTermDspfNames==DRC GATE SRC BULK}||{firstChars==XM}||{probeHierDelim==/}||{caseSensitive==1}||{firstChar==M}||{hierPrefix==X}||{nodePrefix==M}||{plotTermVoltageForNet==0}||{mapNetToMosTerminal==}||{mapSlashDelimToDot==1}||{probePortCurrent==1}||{busBit==\[\]}||{removeNodePrefix==1}||{nlConDelim==.}||{mosModelType==auto}||{keepSchName==0}" }
   set ::wf::WaveView::prefs::_loadingPrefs true
   db::loadPrefs [db::getPrefs wf* -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4/task1/[::sa::_simServer::getSavedSessionExtraPrefsFileName]
   db::setPrefValue saIndependentProcessesDistributionMode -value LocalHost
   set ::wf::WaveView::_nwWaveviewSharedLicKey "-unique_string 424077b79e1069ee007c9cb2fe8bc338d6c7980de498070fc2511cd128a4b2dec1cb7792ad94754213b1591c4466203847cc89c934c62120 -lic_type 2"
   sa::aging_Analysis_Check_Setups -session $session
   sa::setActiveHistoryPoint -session $session -name [list history_1] -loadTestSuite false
   sa::_sequentialRun::restoreContinueRunInfo 0 0 "" ""
    set ::env(PATH) /mnt/apps/public/COE/synopsys_apps/customcompiler/W-2024.09-SP1-2/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/W-2024.09-SP1-2/linux64/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/W-2024.09-SP1-2/linux64/OA/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/W-2024.09-SP1-2/linux64/PyCellStudio/linux64/3rd/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/W-2024.09-SP1-2/linux64/PyCellStudio/bin:/home/argershm/.local/bin:/home/argershm/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/usr/local/cuda/bin:/opt/puppetlabs/bin:/mnt/apps/public/COE/synopsys_apps/syn/W-2024.09-SP2/bin:/mnt/apps/public/COE/synopsys_apps/primesim/W-2024.09-SP1-2/bin:/mnt/apps/public/COE/synopsys_apps/icvalidator/W-2024.09-SP2/bin/linux64:/mnt/apps/public/COE/synopsys_apps/customcompiler/W-2024.09-SP1-2/bin:/mnt/apps/public/COE/synopsys_apps/primewave/W-2024.09-SP1-2/bin:/bin
    sa::_simServer::appendSimulationInServer PrimeSim_default /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.gmid.gmid_nfet_3v3.schematic.session4 0 1 1 overwrite 1 0 1
}
