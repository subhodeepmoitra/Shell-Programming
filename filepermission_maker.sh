#!/bin/sh

if [ "$#" -eq 0 ]; then
	echo "Error: Failed to receive params"
	exit 1
fi

for num in "$@"; do
	expr "$num" + 0
	exit_code=$?
	if [ "$exit_code" -ne 0 ]; then
		echo "Failed exit code: $exit_code"
		echo "Skipping non-neumeric arg"
	else
		echo "Success exit code: $exit_code"
		octal=`echo "ibase=2; obase=8; $num" | bc`
		echo "Permission is $octal"
	fi
done
