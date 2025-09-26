# This is a program to calculate LCM and HCF

is_gcdlcm()
{
echo "Enter first positive number"
read first
echo "Enter second positive number"
read second

orig_first=$first
orig_second=$second

while [ $first -ne $second ]
do
	if [ $first -gt $second ]; then
		first=$((first - second))
	else
		second=$((second - first))
	fi
done

gcd=$first
lcm=$(( (orig_first * orig_second) / gcd ))

echo "GCD = $gcd"
echo "LCM = $lcm"
}

is_gcdlcm $first
