#!/bin/sh

if [ "$#" -eq 0 ]; then
    echo "Error: Enter atleast one number"
    exit 1
fi

max="$1"

for num in "$@"; do
    if [ "$num" -gt "$max" ]; then
        max="$num"
    fi
done

echo "The greatest number is: $max"