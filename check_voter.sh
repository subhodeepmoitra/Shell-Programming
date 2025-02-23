#!/bin/sh
echo "Enter name:"
read name
echo "Enter age:"
read age
if [ "$age" -ge 18 ]; then
	echo "$name is eligible to vote as age is $age"
else
	difference=$(echo "18-$age" | bc)
	echo "$name is not eligible as age is $difference years less than minimum voting age"
fi
