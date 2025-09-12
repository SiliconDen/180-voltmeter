export PDK_DIR=/mnt/designkits/gf180MCU/dk_ncsu/gf180mcu
export EDITOR=vim	# can be whatever though. DH, 09/04/25
# also this is irrelevant if you choose to use the internal editor under general options in cc

if [ ! -f ${PWD}/lib.defs ]; then
  cp $PDK_DIR/setup/lib.defs .
fi

# loads versions used for freepdk3
# TODO find newest version that works for everything (no glibc issues)
#	Maybe done? More testing needed.

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

# Change the command prompt DH, 09/05/25
#	Reset command prompt (don't want if you have other envs running)
#echo ${PS1}
export PS1="[\u@\h \W]\$ "
#	Prepend (gf180) to command prompt to show gf180 resources are loaded
#echo ${PS1}
export PS1="(gf180)${PS1}"

# Alias for custom_compiler bc that's too long to type every time
alias cc="custom_compiler"

custom_compiler &
