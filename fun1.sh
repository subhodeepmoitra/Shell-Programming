echo "Enter a numeric string: "
until valid_input=`read input && echo "$input" | grep -Eq '^[0-9]+$'`
do
    echo "Invalid input. Enter digit only."
done

echo "Thank you ! Got valid number"