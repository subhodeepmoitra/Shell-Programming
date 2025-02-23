echo "Number of correct predictions:"
read correct
echo "Total number of samples:"
read total

accuracy=$(echo "scale=5; ($correct / $total) * 100" | bc)
echo "Model accuracy is: $accuracy %"
