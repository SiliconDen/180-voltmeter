#!/bin/sh

#Created by PW CDPL worker.

statusFile=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom/pwdp_jobs/saeSession1_diffmodegain.SimulationSimulation_cdpl.0.3475977/0.status
doneFile=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom/pwdp_jobs/saeSession1_diffmodegain.SimulationSimulation_cdpl.0.3475977/0.done
errFile=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom/pwdp_jobs/saeSession1_diffmodegain.SimulationSimulation_cdpl.0.3475977/0.err

#Record start info: 
startTime=`date -u +%s`
echo "JOBID: $$" > $statusFile
echo "Host: `hostname`" >> $statusFile
echo "PID: $$" >> $statusFile
echo "Start: $startTime" >> $statusFile

if [ ! -e $statusFile ]; then
    touch $statusFile
fi

SYNOPSYS_PROGRESS_MONITOR="152.14.98.53|47918|PrimeSim_1:0"
export SYNOPSYS_PROGRESS_MONITOR

SYNOPSYS_CUSTOM_LOCAL=/home/argershm/180-voltmeter/Analog/cc/synopsys_custom
export SYNOPSYS_CUSTOM_LOCAL

#Command to execute: 
 /home/argershm/180-voltmeter/Analog/cc/simulation/integrator,tb_main_opamp,schematic/history_1/simulation/diff_mode_gain/PrimeSimSPICE/nominal/netlist/runSimulation  > /home/argershm/180-voltmeter/Analog/cc/simulation/integrator,tb_main_opamp,schematic/history_1/simulation/diff_mode_gain/PrimeSimSPICE/nominal/results/run.log 2>&1
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
