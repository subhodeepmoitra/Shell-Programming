#!/bin/sh
#Positional Arg. check prime number with method

if [ "$#" -eq 0 ]; then
	echo "Error: Enter atleast one argument"
	exit 1
fi

#Function to check if a number is prime or not
isPrime() {
	num="$1"

	#Numbers less than 2 are not prime
	if [ "$num" -lt 2 ]; then
		echo "Not prime"
		return
	fi

	#Check divisibility from 2 to sqrt(num) {num / 2} (Approx.)
	i=2
	while [ "$i" -le `expr "$num" / "$i"` ]; do
		if [ `expr "$num" % "$i"` -eq 0 ]; then
			echo "Not Prime"
			return
		fi
		i=`expr "$i" + 1`
	done

	#No divisors found - So Prime
	echo "Prime"
}

#Looping through each Arg.
for arg in "$@"; do
	#Validating numbers by adding 0
	expr "$arg" + 0
	if [ $? -eq 0 ]; then
		result=`isPrime "$arg"`
                echo "$arg: $result"
	else
		echo "$arg: Invalid number"

	fi
done

