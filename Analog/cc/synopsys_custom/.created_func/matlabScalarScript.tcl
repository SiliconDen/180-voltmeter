proc wf::functions::matlabScalarScript::execute {args} {


    array set opt $args

    set scriptPath $opt(scriptPath)
    #
    set scriptPath [SX:SendCommand "db::resolvePath $scriptPath"]
    set resultsDir $opt(resultsDir)

    #
    SX:SendCommand "db::raiseLicenseTier \{backend\}"

    #
    set retVal [::sa::_launchMatlabScalarScript::execute -scriptPath $scriptPath -resultsDir $resultsDir]
    return $retVal

}

