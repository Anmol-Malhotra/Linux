# !/bin/bash

factorial()
{
	local num=$1
	result=1
	for ((i=2; i<=num; i++))
	do
		result=$((result * i))
	done
	echo $result
}
echo "Factorial of 5:$(factorial 5)"
echo "Factorial of 7:$(factorial 7)"
echo "Factorial of 10:$(factorial 10)"
