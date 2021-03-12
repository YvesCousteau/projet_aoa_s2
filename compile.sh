make OPT=ORIGINAL
for f in `ls | grep ^s13_`; do mv $f ORIGINAL_$f; done

make OPT=CORRECTED
for f in `ls | grep ^s13_`; do mv $f CORRECTED_$f; done
