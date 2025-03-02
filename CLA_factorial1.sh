#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Failed to receive one argument"
	exit 1
fi

num="$1"
fact=1
i=1

while [ "$i" -le "$num" ]; do
	fact=`echo "$fact * $i" | bc`
	i=`expr "$i" + 1`
done

echo "The factorial of $num is $fact"
