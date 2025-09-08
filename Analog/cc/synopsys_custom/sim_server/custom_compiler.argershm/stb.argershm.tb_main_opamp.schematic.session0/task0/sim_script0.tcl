namespace eval :: {
   set session [ss::getActiveSession]
   db::setAttr session.preRunProcsSourceFile -value ""
   sa::showPreRunProcs::_sourcePreRunSourceFile $session
   set tb [db::getNext [sa::getTestbenches -of $session]]
   db::setAttr simulator -of $tb -value PrimeSim
   sa::loadState diff_mode_gain -testbench $tb -use directory -rootPath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0 -resetCollection true -loadDesign true -loadSimulator true -loadResultsDir true
   db::setAttr migratedSimulator -of $tb -value ""
   db::setAttr name -of $tb -value diff_mode_gain
   db::setAttr name -of $session -value saeSession0
   sa::_utils::setUniqueSessionName -of $session -value saeSession0
   set sessionScope [::sa::_utils::getSessionScope [::ss::getActiveSession]]
   db::loadPrefs [db::getPrefs nl* -includeDeprecated 0 -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_coreUtils::getSavedNlPrefsFileName]
   db::loadPrefs [db::getPrefs seCheck* -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_coreUtils::getSavedNlPrefsFileName]
   db::loadPrefs [db::getPrefs dbParamTrim* -includeDeprecated 0 -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::loadPrefs [db::getPrefs sa* -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::setPrefValue saJobSpecificFile -value {}
   ss::setJobOptions {} -isGlobal 1
   db::loadPrefs [db::getPrefs xtLSFUseApplicationProfilesAsQueues -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::loadPrefs [::sa::_testSuite::_uniGetXtPrefByFilter ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_coreUtils::getSavedSessionPrefsFileName]
   db::setPrefValue saBackgroundNetlist -value 0 -scope $sessionScope
catch { ::sa::_utils::DSPF::uniSetDSPFOptions "{hierDelim==|}||{termDelim==:}||{fingerChar==@}||{multiplierString==_nettran_}||{aggregateCurrent==1}||{MOSTermNames==d g s b}||{MOSTermOrder==D G S B}||{MOSTermDspfNames==DRC GATE SRC BULK}||{firstChars==XM}||{probeHierDelim==/}||{caseSensitive==1}||{firstChar==M}||{hierPrefix==X}||{nodePrefix==M}||{plotTermVoltageForNet==0}||{mapNetToMosTerminal==}||{mapSlashDelimToDot==1}||{probePortCurrent==1}||{busBit==\[\]}||{removeNodePrefix==1}||{nlConDelim==.}||{mosModelType==auto}||{keepSchName==0}||{portCurrentAggregateTermLimit==500}" }
   set ::wf::WaveView::prefs::_loadingPrefs true
   db::loadPrefs [db::getPrefs wf* -scope $sessionScope ] -filePath /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0/task0/[::sa::_simServer::getSavedSessionExtraPrefsFileName]
   db::setPrefValue saIndependentProcessesDistributionMode -value LocalHost
   set ::wf::WaveView::_nwWaveviewSharedLicKey "-unique_string 424077b79e1069ee5b655962666fee8ed6c7980de498070fc2511cd128a4b2dec1cb7792ad947542873f9a75402e9f4669d2bea548da8e08 -lic_type 2"
   sa::agingAnalysisCheckSetupsAndClone -session $session
   sa::setActiveHistoryPoint -session $session -name [list history_1] -loadTestSuite false
   sa::_sequentialRun::restoreContinueRunInfo 0 0 "" ""
    set ::env(PATH) /mnt/apps/public/COE/synopsys_apps/customcompiler/X-2025.06-1/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/X-2025.06-1/linux64/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/X-2025.06-1/linux64/OA/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/X-2025.06-1/linux64/PyCellStudio/linux64/3rd/bin:/mnt/apps/public/COE/synopsys_apps/customcompiler/X-2025.06-1/linux64/PyCellStudio/bin:/home/argershm/.local/bin:/home/argershm/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/usr/local/cuda/bin:/opt/puppetlabs/bin:/mnt/apps/public/COE/synopsys_apps/syn/X-2025.06-SP1/bin:/mnt/apps/public/COE/synopsys_apps/primesim/X-2025.06/bin:/mnt/apps/public/COE/synopsys_apps/icvalidator/X-2025.06/bin/linux64:/mnt/apps/public/COE/synopsys_apps/customcompiler/X-2025.06-1/bin:/mnt/apps/public/COE/synopsys_apps/primewave/W-2024.09-SP1-2/bin:/mnt/apps/public/COE/synopsys_apps/vcs/X-2025.06-1/bin:/mnt/apps/public/COE/synopsys_apps/verdi/W-2024.09-SP1/bin:/mnt/apps/public/COE/synopsys_apps/hspice/X-2025.06/hspice/bin:/mnt/apps/public/COE/synopsys_apps/hspice/X-2025.06/hspice/cdpl/bin:/bin
    sa::_simServer::appendSimulationInServer diff_mode_gain /home/argershm/180-voltmeter/Analog/cc/synopsys_custom/sim_server/custom_compiler.argershm/stb.argershm.tb_main_opamp.schematic.session0 0 1 1 overwrite 1 0 0 
}
