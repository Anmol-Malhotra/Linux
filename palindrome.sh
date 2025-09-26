echo "Enter a positive number"
read num
temp=$num
rev=0

while [ $temp -ne 0 ]
do
	digit=$((temp % 10))
	rev=$((rev * 10 + $digit))
	temp=$((temp / 10))
done

if [ $num -eq $rev ]; then
	echo "It is a palindrome"
else
	echo "It is not a palindrome"
fi
