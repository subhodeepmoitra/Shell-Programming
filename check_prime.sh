#!/bin/sh

echo "Enter a number:"
read num

if echo "$num" | grep -q '[^0-9]'; then
	echo "Failed to get a valid integer"
	exit 1
elif [ "$num" -le 0 ]; then
	echo "Failed to receive a positive integer"
	exit 1
fi

i=2
is_prime=1 #consider the number is prime

while [ "$i" -lt "$num" ]; do
	if [ "$(expr "$num" % "$i")" -eq 0 ]; then
		is_prime=0 #found divisor, so not prime
		break
	fi
	i=$(expr "$i" + 1)
done

#show result
if [ "$is_prime" -eq 1 ]; then
	echo "$num is prime"
else
	echo "$num is not prime"
fi

