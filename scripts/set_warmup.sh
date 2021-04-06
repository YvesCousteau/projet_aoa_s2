#!/bin/bash
cd ../src/
CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor performance
cd ../scripts/

N=51
WARMUP=0
REP=500

taskset -c $CORE_ID ../src/s13_02 $N $WARMUP $REP
