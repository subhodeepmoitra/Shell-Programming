#!/bin/sh

if [ "$#" -ne 1 ] || [ "$1" -le 0 ]; then
    echo "Error: Provide a single positive argument"
    exit 1
fi

n="$1"
a=0
b=1

echo "Fibonacci upto $n terms: "

#Print the n terms in loop
i=1
while [ "$i" -le "$n" ]; do
    echo "$a"
    temp="$a"
    a="$b"
    b=`expr "$temp" + "$b"`
    i=`expr "$i" + 1`
done