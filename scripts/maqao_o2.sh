rm -rf maqao_html/*
cd src

make clean
make OPT=ORIGINAL
maqao oneview -R1 xp=../maqao_html/gcc02ORIGINAL -- ./s13_gcc_O2 51 30 750

make clean
make OPT=UNROLL_LOOPINVARIANT
maqao oneview -R1 xp=../maqao_html/gcc02OUNROLL_LOOPINVARIANT -- ./s13_gcc_O2 51 30 750

make clean
make OPT=UNROLL4_LOOPINVARIANT3
maqao oneview -R1 xp=../maqao_html/gcc02OUNROLL_LOOPINVARIANT3 -- ./s13_gcc_O2 51 30 750
