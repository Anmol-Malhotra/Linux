# !anmol/bin/bash

echo "Enter first number: "
read a
echo "Enter second number: "
read b
echo "Your numbers are $a and $b"


echo "For addition: "
sum=$(echo "$a + $b" | bc)
echo "Sum is: $sum"



echo "For subtraction: "
sub=$(echo "$a - $b" | bc)
echo "Difference is: $sub"



echo "For multiplication: "
mul=$(echo "$a * $b" | bc)
echo "Product is: $mul"



echo "For divivsion: "
div=$(echo "$a / $b" | bc)
echo "Quotient is: $div"
