#!/bin/sh

if [ "$#" -ne 2 ]; then
	echo "Error: Failed to get 2 numbers"
	exit 1
fi

num1="$1"
num2="$2"

sum=`echo "$num1 + $num2" | bc`
difference=`echo "$num1 - $num2" | bc`
product=`echo "$num1 * $num2" | bc`
divide=`echo "scale=2; $num1 / $num2" | bc`

echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Divide: $divide"
