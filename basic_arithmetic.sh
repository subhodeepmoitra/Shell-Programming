echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
sum=$(expr $num1 + $num2)
echo "The Sum is: $sum"
substraction=$(expr $num1 - $num2)
echo "The difference is: $substraction"
divident=$(expr $num1 / $num2)
echo "The quotient is: $devident"
remainder=$(expr $num1 % $num2)
echo "The remainder is: $remainder"
product=$(expr $num1 \* $num2)
echo "The product is: $product"

