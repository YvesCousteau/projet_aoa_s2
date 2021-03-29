#!/bin/bash
source ./scripts/colors.sh
#source /opt/intel/oneapi/setvars.sh

# environment

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

REPETITION=1000

  # 2**10 = Ki ; 2**10**2 = Mi
kiO=1024
# L1=$((32*$kiO))
L2=$(( 256 * $kiO ))
# L3=$(( 6144 * $kiO ))

sizeofloat=4

declare -A BENCH_ITERATIONS;
declare -A BENCH_ITERATION_SIZE;
declare -A BENCH_ITERATION_WARMUP;


BENCH_ITERATION_SIZE=226

BENCH_ITERATION_WARMUP=100

# subroutines

rep=100

function run(){
  local exe=$1
  local bench_dir=./scripts/gcc_run_output
  local src_dir=./src


  for iteration in ${!BENCH_ITERATION_SIZE}; do
    local size=${BENCH_ITERATION_SIZE}
    local warmup=${BENCH_ITERATION_WARMUP}

    # run the bench
    echo -e "\t${GREEN}>${NOCOLOR}${LIGHTGRAY} taskset -c $CORE_ID $exe $size $warmup $rep $bench_dir/${exe}_${BENCH_ITERATION_SIZE}.dmp > $bench_dir/${exe}_${size}.dat ${NOCOLOR}"
  taskset -c $CORE_ID $src_dir/$exe $size $warmup $rep > $bench_dir/${exe}_${size}.dat
  done | sed -e 's/^/\t/' # indent make's output
}


mkdir ./scripts/gcc_run_output
# main
if [ ! -z "$1" ]; then
  run $1

else
  echo -e "${GREEN} Running full tests ${NOCOLOR}"
  for executable in `find ./src -maxdepth 1 -executable -type f  ! -name "*.*" -printf "%f\n"`; do
    run $executable
  done

fi
