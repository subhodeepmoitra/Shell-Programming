#!/bin/sh

echo "Enter a number:"
read num

echo "$num" | grep -E '^[0-9]+(\.[0-9]+)?$' >/dev/null

if [ $? -eq 0 ]; then
    echo "Valid positive floating-point number."
else
    echo "Invalid number."
fi

