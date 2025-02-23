#!/bin/sh

echo "Enter a number:"
read num

if echo "$num" | grep -q '[^0-9]'; then
	echo "Not a valid integer"
	exit 1
elif [ "$num" -le 0 ]; then
	echo "Failed to receive a positive integer! :("
	exit 1
fi

fact=1
i=1

while [ "$i" -le "$num" ]; do
	fact=$(echo "$fact * $i" | bc)
	i=$(expr "$i" + 1)
done

echo "The factorial of $num is $fact"

