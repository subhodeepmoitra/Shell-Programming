#!/bin/sh

if [ "$#" -eq 0 ]; then
	echo "Error: Failed to receive params"
	exit 1
fi

for num in "$@"; do
	expr "$num" + 0
	if [ $? -ne 0 ]; then
		echo "Skipping non-neumeric arg"
	else
		octal=`echo "ibase=2; obase=8; $num" | bc`
		echo "Permission is $octal"
	fi
done
