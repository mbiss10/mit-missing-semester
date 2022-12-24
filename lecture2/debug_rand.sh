#!/usr/bin/env bash
x=0
while [ true ]
do
    x=$((x+1))
    ./rand_script.sh > out 2> err_out
    if [[ $? -ne 0 ]]; then 
        echo "Failed on iteration $x!"
	exit 1
    fi 
    echo "Iteration $x ran successfully."
done
