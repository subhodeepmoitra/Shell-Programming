#!/bin/sh
echo "Enter first string"
read str1
echo "Enter second string"
read str2

if test "$str1" \< "$str2"; then
	echo "$str1 comes before $str2 in dictionary"
else
	echo "$str2 comes before $str1 in dictionary"
fi
