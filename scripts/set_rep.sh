cd ../src/
make clean;
CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave
make OPT=ORIGINAL;
cd ../scripts/


CACHE=1516
WARMUP=10
REP=1000

taskset -c $CORE_ID ../src/s13_02 $CACHE $WARMUP $REP #> ../output/RAM_rep.xlsx
