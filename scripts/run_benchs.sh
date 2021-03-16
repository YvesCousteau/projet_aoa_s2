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

sizeofloat=4

declare -A BENCH_ITERATIONS
BENCH_ITERATION_SIZE["L1"]=73
BENCH_ITERATION_SIZE["L2"]=228
BENCH_ITERATION_SIZE["L3"]=530
BENCH_ITERATION_SIZE["RAM"]=818

BENCH_ITERATION_WARMUP["L1"]=150000
BENCH_ITERATION_WARMUP["L2"]=20000
BENCH_ITERATION_WARMUP["L3"]=3000
BENCH_ITERATION_WARMUP["RAM"]=1600
# subroutines

rep=100

function run(){
  local exe=$1
  local bench_dir=gcc_run_output

  echo -e "${LIGHTGREEN}*${NOCOLOR} running bench ${GREEN}$exe${NOCOLOR}"

  for iteration in ${!BENCH_ITERATION_SIZE[@]}; do
    local size=${BENCH_ITERATION_SIZE[${iteration}]}
    local warmup=${BENCH_ITERATION_WARMUP[${iteration}]}

    # run the bench
    echo -e "\t${GREEN}>${NOCOLOR}${LIGHTGRAY} \
taskset -c $CORE_ID $exe $size $warmup $rep $bench_dir/${exe}_${iteration}.dmp > $bench_dir/${exe}_${size}.dat \
${NOCOLOR}"
	taskset -c $CORE_ID $exe $size $warmup $rep > $bench_dir/${exe}_${size}.dat
  done | sed -e 's/^/\t/' # indent make's output
}


# main
if [ ! -z "$1" ]; then
  run $1

else
  echo -e "${GREEN} Running full tests ${NOCOLOR}"
  for executable in `find . -maxdepth 1 -executable -type f  ! -name "*.*"`; do
    run $executable
  done

fi
