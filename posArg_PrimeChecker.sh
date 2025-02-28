#!/bin/sh

isPrime(){
	num="$1"
	if [ "$num" -lt 2 ]; then
		return 1
	fi
	i=2
	while [ "$i" -lt "$num" ]; do
		if [ `expr $num % $i` -eq 0 ]; then
			return 1
		fi
		i=`expr $i + 1`
	done
	return 0
}

for arg in "$@"; do
	if isPrime "$arg"; then
		echo "$arg is Prime"
	else
		echo "$arg is not Prime"
	fi
done
