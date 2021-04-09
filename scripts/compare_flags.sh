for f in *; do echo $(cat s13_icx_O3_native.dat | sort | sed '15q;d') s13_icx_O3_native.dat >> res; done
gnuplot template.gp > a.png
