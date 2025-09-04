export PDK_DIR=/mnt/designkits/gf180MCU/dk_ncsu/gf180mcu
export EDITOR=vi	# DH, 09/04/25

if [ ! -f ${PWD}/lib.defs ]; then
  cp $PDK_DIR/setup/lib.defs .
fi

# loads versions used for freepdk3
# TODO find newest version that works for everything (no glibc issues)
#ml syn/W-2024.09-SP2
ml syn
#ml primesim/W-2024.09-SP1-2
ml primesim
#ml icvalidator/W-2024.09-SP2
ml icvalidator
#ml customcompiler/W-2024.09-SP1-2
ml customcompiler
#ml primewave/W-2024.09-SP1-2
ml primewave
ml vcs			# DH, 09/04/25
ml verdi		# DH, 09/04/25
ml hspice		# DH, 09/04/25

# unsure if needed
# ml icvalidator/W-2024.09-SP2
# ml icvalidator/

