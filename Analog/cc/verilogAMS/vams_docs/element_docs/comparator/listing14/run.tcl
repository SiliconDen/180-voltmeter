database -open waves -into waves.shm -default
probe -create testbench -depth all -shm -waveform
run 100us
exit
