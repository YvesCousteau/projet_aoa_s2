#!/bin/bash
source colors.sh

# environment

#CORE_ID=3 # the core id on which the bench is executed
#cpupower -c $CORE_ID frequency-set --governor performance

# subroutines

warmup=0
rep=100
size=1516

function run(){
  local exe=$1
  local bench_dir=gcc_run_output

  echo -e "${LIGHTGREEN}*${NOCOLOR} running bench ${GREEN}$exe${NOCOLOR}"

	for warmup in `seq 100 50 500`; do

  	# run the bench
  	echo -e "\t${GREEN}>${NOCOLOR}${LIGHTGRAY} \
taskset -c $CORE_ID $exe $size $warmup $rep > $bench_dir/${exe}_rep-${rep}_warmup-${warmup}.dat \
${NOCOLOR}"
	#taskset -c $CORE_ID $exe $size $warmup $rep > $bench_dir/${exe}_rep-${rep}_warmup-${warmup}.dat
	./$exe $size $warmup $rep > $bench_dir/${exe}_rep-${rep}_warmup-${warmup}.dat
	  done | sed -e 's/^/\t/' # indent make's output
}


# main
if [ ! -z "$1" ]; then
  run $1

else
  echo -e "${GREEN} Running full tests ${NOCOLOR}"
  #for executable in `find . -maxdepth 1 -executable -type f  ! -name "*.*"`; do
  for executable in `ls | grep s13_`; do
    run $executable
  done

fi
