#!/bin/sh

#Created by PW CDPL worker.

statusFile=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom/pwdp_jobs/saeSession1_default.SimulationSimulation_cdpl.0.3917807/0.status
doneFile=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom/pwdp_jobs/saeSession1_default.SimulationSimulation_cdpl.0.3917807/0.done
errFile=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom/pwdp_jobs/saeSession1_default.SimulationSimulation_cdpl.0.3917807/0.err

#Record start info: 
startTime=`date -u +%s`
echo "JOBID: $$" > $statusFile
echo "Host: `hostname`" >> $statusFile
echo "PID: $$" >> $statusFile
echo "Start: $startTime" >> $statusFile

if [ ! -e $statusFile ]; then
    touch $statusFile
fi

SYNOPSYS_PROGRESS_MONITOR="152.14.98.53|47134|PrimeSim_1:0"
export SYNOPSYS_PROGRESS_MONITOR

SYNOPSYS_CUSTOM_LOCAL=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom
export SYNOPSYS_CUSTOM_LOCAL

#Command to execute: 
 /home/argershm/180-voltmeter/Analog/cc/simulation/gmid,gmid_nfet_3v3,schematic/history_1/simulation/default/PrimeSimSPICE/nominal/netlist/runSimulation  > /home/argershm/180-voltmeter/Analog/cc/simulation/gmid,gmid_nfet_3v3,schematic/history_1/simulation/default/PrimeSimSPICE/nominal/results/run.log 2>&1
status=$?
endTime=`date -u +%s`

if [ $status -eq 0 ]
then
    touch $doneFile
else
    touch $errFile
fi

#Record end info: 
echo "JOBID: $VOV_JOBID" > $statusFile
echo "JOBID: $$" > $statusFile
echo "Host: `hostname`" >> $statusFile
echo "PID: $$" >> $statusFile
echo "Start: $startTime" >> $statusFile
echo "Exit: $status" >> $statusFile
echo "End: $endTime" >> $statusFile

if [ ! -e $statusFile ]; then
    touch $statusFile
fi

exit $status
