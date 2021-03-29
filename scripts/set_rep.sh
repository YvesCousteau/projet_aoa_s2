cd ../src/
make clean;

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

make OPT=CORRECTED2;

CACHE=226
WARMUP=0
REP=10

taskset -c $CORE_ID ./s13_02 $CACHE $WARMUP $REP
cd ../scripts/
