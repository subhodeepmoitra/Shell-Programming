#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Error: Provide a positive integer"
	exit 1
fi

num="$1"

if [ "$num" -le 0 ]; then
	echo "Error: Failed to receive a positive integer"
	exit 1
fi

factor=2

echo "The prime factorization of $num"

while [ "$num" -gt 1 ]; do
	remainder=`expr "$num" % "$factor"`
	if [ "$remainder" -eq 0 ]; then
		echo "$factor"
		num=`expr "$num" / "$factor"`
	else
		factor=`expr "$factor" + 1`
	fi
done

