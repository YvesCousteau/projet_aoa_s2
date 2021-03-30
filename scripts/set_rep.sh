cd ../src/
make clean;

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

make OPT=CORRECTED2;
#cd ../scripts/

SIZE=782
WARMUP=40
REP=1

mkdir -p ../output
for executable in `find . -type f -executable -name "s13*" `; do
  filename=$(basename $executable)

  taskset -c $CORE_ID ../src/$filename $SIZE $WARMUP $REP >  ../output/${filename}.xlsx

done
