#!/bin/bash
source colors.sh

cd ../src

#load icc and icx compiler
source ~/intel/oneapi/setvars.sh

#generate maqao files
echo -e "${BLUE}maqao OPT=ORIGINAL ${NOCOLOR}"
make maqao OPT=ORIGINAL

echo -e "${BLUE}maqao OPT=UNROLL_LOOPINVARIANT ${NOCOLOR}"
make maqao OPT=UNROLL_LOOPINVARIANT

echo -e "${BLUE}maqao OPT=UNROLL4_LOOPINVARIANT3 ${NOCOLOR}"
make maqao OPT=UNROLL4_LOOPINVARIANT3
