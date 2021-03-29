cd ../src/
make clean;

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

make OPT=CORRECTED2;
cd ../scripts/

SIZE=226
WARMUP=0
REP=1000

taskset -c $CORE_ID ../src/s13_02 $SIZE $WARMUP $REP > out
