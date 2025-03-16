#!/bin/sh
# Minimize the quadratic function f(x)=(x-3)^2

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <initial_x> <learning_rate> <iterations>"
    exit 1
fi

x="$1"
lr="$2"
iter="$3"

#Gradient Descent loop
i=1
while [ "$i" -le "$iter" ]; do
    # Find the gradient of f(x)=(x-3)^2 --> f'(x)=2*(x-3)
    gradient=`echo "2 * ($x - 3)" | bc -l`
    # Update x: new_x = x - lr * gradient
    x=`echo "$x - $lr * $gradient" | bc -l`

    # Display progress
    echo "Iter $i: x = $x"

    #Increment iter
    i=`expr "$i" + 1`
done

echo "Final value of x is: $x"