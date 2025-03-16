#!/bin/sh
if [ "$#" -eq 0 ]; then
    echo "Error: Provide at least one number as an argument."
    exit 1
fi

isArmstrong() {
    num="$1"
    original="$num"
    sum=0

    # Count the number of digits
    digits=0
    temp="$num"
    while [ "$temp" -gt 0 ]; do
        digits=`expr "$digits" + 1`
        temp=`expr "$temp" / 10`
    done

    # Calculate the sum of each digit raised to the power of the total digits (using bc)
    while [ "$num" -gt 0 ]; do
        digit=`expr "$num" % 10`
        power=`echo "$digit ^ $digits" | bc`
        sum=`expr "$sum" + "$power"`
        num=`expr "$num" / 10`
    done

    # Check if the sum equals the original number
    if [ "$sum" -eq "$original" ]; then
        echo "$original is an Armstrong number."
    else
        echo "$original is not an Armstrong number."
    fi
}

# Loop through all provided arguments
for arg in "$@"; do
    # Check if the argument is a valid number (integers only)
    if expr "$arg" + 0 >/dev/null 2>&1; then
        isArmstrong "$arg"
    else
        echo "$arg: Invalid number"
    fi
done
