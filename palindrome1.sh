#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Error: Provide one integer"
	exit 1
fi

num="$1"
rev=0
temp=$num

while [ "$num" -gt 0 ]; do
	rem=`expr "$num" % 10`
	rev=`echo "$rev * 10 + $rem" | bc`
	num=`expr "$num" / 10`
done

if [ "$rev" -eq "$temp" ]; then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi

