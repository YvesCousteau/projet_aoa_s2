#!/bin/bash

rm res b.png
cd runs_output_parallel

for f in *; do
	echo $(cat $f | sort | sed '15q;d' | sed s,cycles\/c\_element,,g) $(echo $f | sed s/s13\_//g | sed s/\.dat//g| sed s/gcc\_/gcc-/g | sed s/icx\_/icx-/g | sed s/\_/-/g) >> ../res
done

cd ..
gnuplot template.gp > b.png
