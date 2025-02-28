#!/bin/sh
#Positional Parameters

if [ "$#" -eq 0 ]; then
	echo "Failed to receive arguments"
	echo "Usage: $0 arg1, arg2, argN"
	exit 1
fi

echo "0 arg: $0"
echo "1 arg: $1"
echo "2 arg: $2"
echo "3 arg: $3"
echo "4 arg: $4"
echo "5 arg: $5"
echo "6 arg: $6"
echo "7 arg: $7"
echo "8 arg: $8"
echo "9 arg: $9"
echo "10 arg: ${10}"

echo "Total number of arguments: $#"

echo "All the arguments: $@"

echo "Looping through all arguments"

i=1
for arg in $@; do
	echo "$i argument $arg"
	i=`expr $i + 1`
done
