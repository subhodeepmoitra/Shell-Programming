#!/bin/sh

# Check if enough arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <filename> <pattern> <replacement>"
    exit 1
fi

# Get arguments
filename="$1"
pattern="$2"
replacement="$3"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found!"
    exit 1
fi

# Perform the replacement using sed
sed "s/$pattern/$replacement/g" "$filename"
