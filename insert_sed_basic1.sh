#!/bin/sh

# Ensure correct arguments
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <filename> <pattern> <new line>"
    exit 1
fi

# Get arguments
filename="$1"
pattern="$2"
newline="$3"

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found!"
    exit 1
fi

# Insert the new line before the matching pattern
sed "/$pattern/i\\
$newline" "$filename"
