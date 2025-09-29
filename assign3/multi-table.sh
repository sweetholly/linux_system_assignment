#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Invalid input"
	exit 1
fi

rows=$1
cols=$2


if [[ "$rows" == -* || "$cols" == -* ]]; then
	echo "Input must be greater than 0"
        exit 1
fi


if ! [[ "$rows" =~ ^[0-9]+$ && "$cols" =~ ^[0-9]+$ ]]; then
	echo "Invalid input"
	exit 1
fi


if ((rows == 0 || cols == 0)); then
	echo "must be greater than 0"
	exit 1
fi


for ((i=1; i<=rows; i++))
do
       	for ((j=1; j<=cols; j++))
	do
		printf "%4d * %d = %3d" "$i" "$j" " $((i * j))"	
	done
	echo
done

