#!/bin/bash

for file in `ls ./gcc_run_output`; do
	echo `awk '{ sum += $1 } END { print sum }' ./gcc_run_output/$file` $file
done | sort
