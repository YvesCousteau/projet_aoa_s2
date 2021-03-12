#!/bin/bash

for file in `ls gcc_exec_output`; do
	echo `awk '{ sum += $1 } END { print sum }' file` file 
done | sort
