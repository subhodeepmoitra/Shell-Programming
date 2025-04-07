#!/bin/sh

if [ "$#" -ne 1 ] || ! echo "$1" | grep -Eq '^[0-9]+$'; then
    echo "Usage: $0 <positive_integer>"
    exit 1
fi

num="$1"
rev=0

until [ "$num" -eq 0 ]; do
    rem=`expr "$num" % 10`
    rev=`expr "$rev" \* 10 + "$rem"`
    num=`expr "$num" / 10`
done

echo "Reversed number: $rev"
