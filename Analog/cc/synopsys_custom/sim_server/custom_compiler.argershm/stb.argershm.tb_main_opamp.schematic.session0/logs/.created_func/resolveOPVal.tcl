proc wf::functions::resolveOPVal::execute {args} {

            array set opt $args
            
            set dir $opt(resultsDir)
            #
            #
            #

            #
            #
            #
            #

            #

            set sig [sx_create_signal "mySignal" analog]

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

            set cmd [list ::sa::_coreUtils_inc::calMCValues {*}$args]
            set cmd2 [list SX:SendCommandRPC $cmd]
            #
            set all_data [eval $cmd2]
            #

            #
            #
            

            set all_y [lindex $all_data 2]
            set sweepParam [lindex $all_data 0]
            set paramVals [lindex $all_data 1]
            #
            #
            #
            
            if {$all_y!=""} {
                if {$sweepParam=="" || $paramVals==""} {
                    sx_append_data $sig 0 $all_y
                } else {
                    #
                    sx_add_param $sig $sweepParam $paramVals
                    foreach y $all_y {
                        sx_append_data $sig 0 $y
                        sx_next_trace $sig
                    }
                }
            } 

            #
            #
            #
            #
            #
            return $sig

         	
        
}

