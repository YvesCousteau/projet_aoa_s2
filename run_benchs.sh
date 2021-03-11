#!/bin/bash
source colors.sh

# environment

CORE_ID=3 # the core id on which the bench is executed
cpupower -c $CORE_ID frequency-set --governor performance

REPETITION=1000

  # 2**10 = Ki ; 2**10**2 = Mi
L1=$(( 32 * 2**10 )) 
L2=$(( 256 * 2**10 )) 
L3=$(( 12 * $(( 2**10))**2 )) 

declare -A BENCH_ITERATIONS
BENCH_ITERATIONS["L1"]=$(( $L1 /2 ))
BENCH_ITERATIONS["L2"]=$(( $L1 + $L2/2 )) 
BENCH_ITERATIONS["L3"]=$(( $L1 + $L2 + $L3/2 ))
BENCH_ITERATIONS["RAM"]=$(( $L1 + $L2 + $L3 + $L3 ))
# subroutines

warmup=100
rep=100

function run(){
  local exe=$1
  local bench_dir=gcc_run_output

  echo -e "${LIGHTGREEN}*${NOCOLOR} running bench ${GREEN}$exe${NOCOLOR}"

  #for iteration in ${!BENCH_ITERATIONS[@]}; do
    #local size=${BENCH_ITERATIONS[${iteration}]}
	local iteration="L1"
	local size=1024

    # run the bench
    echo -e "\t${GREEN}>${NOCOLOR}${LIGHTGRAY} \
taskset -c $CORE_ID $exe $size $warmup $rep > $bench_dir/${exe}_${iteration}.dat \
${NOCOLOR}"
	taskset -c $CORE_ID $exe $size $warmup $rep > $bench_dir/${exe}_${iteration}.dat
  #done | sed -e 's/^/\t/' # indent make's output
}


# main 
if [ ! -z "$1" ]; then
  run $1

else 
  echo -e "${GREEN} Running full tests ${NOCOLOR}"
  for executable in `find . -executable -type f -depth 1 ! -name "*.*"`; do
    run $executable
  done

fi
