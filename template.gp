set term png size 1900,1000 enhanced

set grid

set auto x

set key left top

set xlabel "# warmup"
set ylabel "execution time s (lower is better)"

#overwrite
if (exists("xlabel_")) set xlabel xlabel_

set terminal png enhanced background rgb "#dddddd"

set style data line
set style fill solid border -1
set boxwidth 0.9

set xtic rotate by -45 scale 0

set multiplot layout 2, 2 rowsfirst

set autoscale y

  set title "warmup time / exec time"
  plot "find_warmup.data" u 1:xtic(1) t "Intel Core i7-lt" lt rgb "#81a1c1"

