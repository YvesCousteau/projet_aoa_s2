#!/bin/bash
source ./scripts/colors.sh
#source /opt/intel/oneapi/setvars.sh

# environment

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

REPETITION=1000
WARMUPS=10

N=1512

function run(){
  local exe=$1
  local bench_dir=./scripts/runs_output
  local src_dir=./src

  echo -e "\t${GREEN}>${NOCOLOR}${LIGHTGRAY} taskset -c $CORE_ID $exe $size $warmup $rep $bench_dir/${exe}_${BENCH_ITERATION_SIZE}.dmp > $bench_dir/${exe}_${size}.dat ${NOCOLOR}"
  taskset -c $CORE_ID $src_dir/$exe $N $WARMUPS $REPETITION > $bench_dir/${exe}.dat
}


rm -rf ./scripts/runs_output
mkdir ./scripts/runs_output
# main
if [ ! -z "$1" ]; then
  run $1

else
  echo -e "${GREEN} Running full tests ${NOCOLOR}"
  for executable in `find ./src -maxdepth 1 -executable -type f  ! -name "*.*" -printf "%f\n"`; do
    run $executable
  done

fi