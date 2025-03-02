#!/bin/sh

if [ "$#" -eq 0 ]; then
	echo "Error: Found no parameters"
	exit 1
fi

for arg in "$@"; do
	if [ -f "$arg" ]; then
		echo "$arg is a file"
	elif [ -d "$arg" ]; then
		echo "$arg is a directory"
	else
		echo "$arg not found"
	fi
done

