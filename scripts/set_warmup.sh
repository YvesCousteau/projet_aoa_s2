cd ../src/
make clean;
CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave
make OPT=CORRECTED2;
cd ../scripts/


CACHE=226
WARMUP=25000
REP=1

taskset -c $CORE_ID ../src/s13_02 $CACHE $WARMUP $REP
