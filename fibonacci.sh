read -p "Enter the upper limit: " limit
a=0
b=1
echo "Fibonacci series up to $limit:"
echo -n "$a "
while [ $b -le $limit ]
	do
    		echo -n "$b "
    		temp=$b
    		b=$((a + b))
    		a=$temp
	done
echo
