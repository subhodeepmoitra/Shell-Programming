#!/bin/sh

if [ "$#" -eq 0 ]; then
	echo "Failed to receive args."
	echo "Usage: $0 number1, number2, ..., numberN"
	exit 1
fi

for num in "$@"; do
	remainder=`echo "$num % 2" | bc`
	if [ "$remainder" -eq 0 ]; then
		echo "$num is even"
	else
		echo "$num is odd"
	fi
done
