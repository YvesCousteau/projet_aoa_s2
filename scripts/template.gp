set term png size 1000,800 enhanced

set grid

set auto x

set key left top

set xlabel "compiler - flags"
set ylabel "cycles/iteration"

#overwrite
if (exists("xlabel_")) set xlabel xlabel_

set terminal png enhanced background rgb "#dddddd"

set style data histogram
set style fill solid border -1
set boxwidth 0.9

set xtic rotate by -45 scale 0

set autoscale y

set title "warmup time / exec time"
plot "res" u 1:xtic(2) t "Intel Core i7-lt" lt rgb "#81a1c1"

