cd ../src/
make clean;

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

make OPT=ORIGINAL;


SIZE=159
WARMUP=25
REP=1000

mkdir -p ../output
for executable in `find . -type f -executable -name "s13*" `; do
  filename=$(basename $executable)

  # taskset -c $CORE_ID ./$filename $SIZE $WARMUP $REP >  ../output/${filename}.xlsx
  taskset -c $CORE_ID ./$filename $SIZE $WARMUP $REP

done
cd ../scripts/