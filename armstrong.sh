echo "Enter a number: "
read num

a=${#num}
sum=0
temp=$num

while [ $temp -gt 0 ]
do
    digit=$(( temp % 10 ))
    power=$(echo "$digit^$a" | bc)
    sum=$(( sum + power ))
    temp=$(( temp / 10 ))
done

echo "Sum of digits is: $sum"
if [ $sum -eq $num ]; then
        echo "It is an Armstrong number"
else
        echo "It is not an armstrong number"
fi
