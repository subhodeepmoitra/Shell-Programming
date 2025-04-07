#!/bin/sh

counter=1

until [ "$counter" -gt 5 ]
do
    echo "Counter is $counter"
    counter=`expr "$counter" + 1`
done