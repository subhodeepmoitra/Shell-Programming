#!/bin/sh

if [ "$#" -eq 0 ]; then
	echo "Error: No params found"
	exit 1
fi

for num in "$@"; do
	expr "$num" + 0
	if [ $? -ne 0 ]; then
		echo "Skipping non-neumeric arguments: $num"
	else
		binary=`echo "obase=2; $num" | bc`
		echo "$num in binary is: $binary"
	fi
done
