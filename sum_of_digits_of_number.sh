#!/bin/sh

if [ "$#" -ne 1 ] || ! expr "$1" + 0 >/dev/null 2>&1; then
    echo "Error: Provide a single number"
    exit 1
fi

num="$1"
sum=0

while [ "$num" -gt 0 ]; do
    digit=`expr "$num" % 10`
    sum=`expr "$sum" + "$digit"`
    num=`expr "$num" / 10`

done

echo "Sum of digit: $sum"