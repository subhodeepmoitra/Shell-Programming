#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <base> <exponent>"
    exit 1
fi

echo "$1" | grep -Eq '^[0-9]+$' || { echo "Base must be a non-negative integer."; exit 1; }
echo "$2" | grep -Eq '^[0-9]+$' || { echo "Exponent must be a non-negative integer."; exit 1; }

base=$1
exp=$2
result=1
count=0

while [ "$count" -lt "$exp" ]
do
    result=`expr "$result" \* "$base"`
    count=`expr "$count" + 1`
done

echo "$base raised to the power $exp is $result"

