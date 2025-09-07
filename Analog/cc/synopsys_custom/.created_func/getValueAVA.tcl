proc wf::functions::getValueAVA::execute {args} {

    array set opt $args
    set measName $opt(measName)
    set type $opt(type)
    set dir [sx_get_current_result_dir]
    set jsonFile [findDetailsJson [lindex $dir 0]]
    if {$jsonFile == ""} {
        error "No ava.details.json file found under $dir"
        return
    }
    
    #
    set type [string tolower $type]
    
    if {$type eq "nominal"} {
        set cmd [list ::sa::avaJsonReader::getMeasureNominal $jsonFile $measName]
        set value [SX:SendCommandRPC $cmd]
    } elseif {$type eq "mean"} {
        set cmd [list ::sa::avaJsonReader::getMeasureStatistics $jsonFile $measName]
        set moments [SX:SendCommandRPC $cmd]
        set value [lindex $moments 0]
    } elseif {$type eq "stddev"} {
        set cmd [list ::sa::avaJsonReader::getMeasureStatistics $jsonFile $measName]
        set moments [SX:SendCommandRPC $cmd]
        set value [lindex $moments 1]
    } elseif {$type eq "skewness"} {
        set cmd [list ::sa::avaJsonReader::getMeasureStatistics $jsonFile $measName]
        set moments [SX:SendCommandRPC $cmd]
        set value [lindex $moments 2]
    } elseif {$type eq "kurtosis"} {
        set cmd [list ::sa::avaJsonReader::getMeasureStatistics $jsonFile $measName]
        set moments [SX:SendCommandRPC $cmd]
        set value [lindex $moments 3]
    } elseif {$type eq "min"} {
        set cmd [list ::sa::avaJsonReader::getMeasureExtremeValue $jsonFile $measName "min"]
        set value [SX:SendCommandRPC $cmd]
    } elseif {$type eq "max"} {
        set cmd [list ::sa::avaJsonReader::getMeasureExtremeValue $jsonFile $measName "max"]
        set value [SX:SendCommandRPC $cmd]
    } elseif {$type eq "lq"} {
        set cmd [list ::sa::avaJsonReader::getMeasureQuantiles $jsonFile $measName]
        set qunatiles [SX:SendCommandRPC $cmd]
        set value [lindex $qunatiles 0]
    } elseif {$type eq "rq"} {
        set cmd [list ::sa::avaJsonReader::getMeasureQuantiles $jsonFile $measName]
        set qunatiles [SX:SendCommandRPC $cmd]
        set value [lindex $qunatiles 1]
    } elseif {$type eq "lq_lcl"} {
        set cmd [list ::sa::avaJsonReader::getMeasureDataByName $jsonFile $measName "Left_Quantiles_LCL"]
        set value [SX:SendCommandRPC $cmd]
    } elseif {$type eq "lq_ucl"} {
        set cmd [list ::sa::avaJsonReader::getMeasureDataByName $jsonFile $measName "Left_Quantiles_UCL"]
        set value [SX:SendCommandRPC $cmd]
    } elseif {$type eq "rq_lcl"} {
        set cmd [list ::sa::avaJsonReader::getMeasureDataByName $jsonFile $measName "Right_Quantiles_LCL"]
        set value [SX:SendCommandRPC $cmd]
    } elseif {$type eq "rq_ucl"} {
        set cmd [list ::sa::avaJsonReader::getMeasureDataByName $jsonFile $measName "Right_Quantiles_UCL"]
        set value [SX:SendCommandRPC $cmd]
    } else {
        error "Invalid value for type. Valid values are nominal, mean, stddev, skewness, kurtosis, min, max, lq, rq."
        return
    }
    
    return $value	

}

