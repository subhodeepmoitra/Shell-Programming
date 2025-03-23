#!/bin/sh

# Ensure the user gives filename and pattern
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <pattern>"
    exit 1
fi

# Get arguments
filename="$1"
pattern="$2"

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found!"
    exit 1
fi

# Use sed to delete lines with the pattern
sed "/$pattern/d" "$filename"
