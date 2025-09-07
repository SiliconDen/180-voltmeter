proc wf::functions::getAVASigmaByValue::execute {args} {

    array set opt $args
    set dir $opt(resultsDir)
    set meas $opt(measName)
    set specValue $opt(specValue)
    
    set csvFile [findCSV [lindex $dir 0]]
    if {$csvFile == ""} {
        puts "No qq.csv file found under $dir"
        return
    }
    set cmd [list ::sa::optExtraction::findSigma $meas $csvFile $specValue $opt(specType)]
    set cmd [list SX:SendCommandRPC $cmd]
    set sigma [eval $cmd]
    return $sigma	

}

