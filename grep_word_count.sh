#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <word> <filename>"
    exit 1
fi

word="$1"
file="$2"

count=$(grep -io "$word" "$file" | wc -l)
echo "The word '$word' occurred $count times in '$file'."
