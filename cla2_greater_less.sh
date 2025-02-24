#!/bin/sh

if [ "$#" -ne 2 ]; then
	echo "Error: Failed to receive two parameters"
	exit
fi

n1="$1"
n2="$2"

if [ "$n1" -gt "$n2" ]; then
	echo "$n1 > $n2"
elif [ "$n2" -gt "$n1" ]; then
	echo "$n2 > $n1"
else
	echo "$n1 = $n2"
fi

