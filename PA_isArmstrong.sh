#!/bin/sh
if [ "$#" -eq 0 ]; then
	echo "Error: Failed to receive minimum arg."
	exit 1
fi

isArmstrong() {
	num="$1"
	original="$num"
	sum=0
	
	#count the number of digits
	digits=0
	temp="$num"
	while [ "$temp" -gt 0 ]; do
		digits=`expr "$digits" + 1`
		temp=`expr "$temp" / 10`
	done
	#calculate the sum of digit^digit
	while [ "$num" -gt 0 ]; do
		digit=`expr "$num" % 10`
		power=1
		i=0
		#calculate digit^digit using loop
		while [ "$i" -lt "$digits" ]; do
			power=`expr "$power" \* "$digit"`
			i=`expr "$i" + 1`
		done
		sum=`expr "$sum" + "$power"`
		num=`expr "$num" / 10`
	done
	#Check if sum == original
	if [ "$sum" -eq "$original" ]; then
		echo "$original is armstrong"
	else
		echo "$original is not armstrong"
	fi
}
for arg in "$@"; do
	if expr "$arg" + 0 >/dev/null 2>&1; then 
	# > redirects standard output (stdout) — that’s the normal output you see on the terminal.
    # /dev/null is a special file that’s like a "black hole" — anything sent there is thrown away.
		isArmstrong "$arg"
	else
		echo "Calculation not possible"
	fi
done
