echo "Enter a number:"
read num

if echo "$num" | grep -q '[^0-9]'; then
	echo "Not a valid integer"
else
	echo "Valid integer"
fi
