#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Error: Provide one integer"
	exit 1
fi

num="$1"
rev=0

while [ "$num" -gt 0 ]; do
	rem=`expr "$num" % 10`
	rev=`echo "$rev * 10 + $rem" | bc`
	num=`expr "$num" / 10`
done

echo "The reverse number is: $rev"
