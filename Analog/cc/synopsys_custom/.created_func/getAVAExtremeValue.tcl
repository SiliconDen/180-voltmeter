proc wf::functions::getAVAExtremeValue::execute {args} {

    array set opt $args
    set dir $opt(resultsDir)
    set meas $opt(measName)
    set extremeType $opt(extremeType)
    #
    #
    #
    #
    #
    #
    #
    #
    #
    #
    #
    set jsonFile [findDetailsJson [lindex $dir 0]]
    if {$jsonFile == ""} {
        puts "No ava.details.json file found under $dir"
        return
    }
    set cmd [list ::sa::optExtraction::getMeasureExtremeValue $meas $jsonFile $extremeType]
    set cmd [list SX:SendCommandRPC $cmd]
    set value [eval $cmd]
    return $value	

}

