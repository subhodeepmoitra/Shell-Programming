#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <string>"
    exit 1
fi

input="$1"

echo "$input" | grep -Eq '^[0-9]+$'
exst=$?

if [ "$exst" -eq 0 ]; then
    echo "'$input' is numeric with exit status $exst"
else
    echo "'$input' is NOT numeric with exit status $exst"
fi
