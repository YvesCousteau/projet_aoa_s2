#!/bin/bash

cd ../src

#laod icc and ics compiler
intel

make maqao OPT=ORIGINAL
make maqao OPT=UNROLL_LOOPINVARIANT
make maqao OPT=UNROLL4_LOOPINVARIANT3
