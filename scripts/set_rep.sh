[ -z $1 ] && exit


SRC="../src/"

#make -C $SRC clean;
CORE_ID=3 # the core id on which the bench is executed
sudo cpupower -c $CORE_ID frequency-set --governor powersave
make -C $SRC OPT=ORIGINAL;

CACHE=$1
WARMUP=0
REP=100

taskset -c $CORE_ID ${SRC}s13_02 $CACHE $WARMUP $REP > find_warmup.data
gnuplot ../template.gp > RAM_REP.png
eog RAM_REP.png