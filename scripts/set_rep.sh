cd ../src/
make clean;

CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave

make OPT=ORIGINAL;
#cd ../scripts/

SIZE=782
WARMUP=20
REP=800
rm -rf ../output
mkdir -p ../output

for executable in `find . -type f -executable -name "s13*" `; do
  filename=$(basename $executable)

  echo "${filename}"
  taskset -c $CORE_ID ../src/$filename $SIZE $WARMUP $REP >  ../output/${filename}.xlsx

done

#taskset -c $CORE_ID ../src/s13_O3_native $SIZE $WARMUP $REP > ../output/s13_O3_native.xlsx
# taskset -c $CORE_ID ../src/s13_03 $SIZE $WARMUP $REP > ../output/L3_perf_O3.xlsx
# taskset -c $CORE_ID ../src/s13_03n $SIZE $WARMUP $REP > ../output/L3_perf_O3n.xlsx
