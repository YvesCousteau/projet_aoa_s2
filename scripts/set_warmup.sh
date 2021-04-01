cd ../src/
make clean;
CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave
make OPT=ORIGINAL;
cd ../scripts/


SIZE=782
WARMUP=0
REP=100

mkdir -p ../output
taskset -c $CORE_ID ../src/s13_02 $SIZE $WARMUP $REP > ../output/L3_warmup.xlsx
