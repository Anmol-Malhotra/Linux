is_sort()
{
echo "Enter numbers to be sorted (seperated with space)"
read -a num

echo "Choose sorting order"
echo "1. Ascending"
echo "2. Descending"
read choice

if [ "$choice" -eq 1 ]; then
	echo "Sorted in ascending order"
	printf "%s\n" "${num[@]}" | sort -n
elif [ "$choice" -eq 2 ]; then
	echo"Sorted in descending order"
	printf "%s\n" "${num[@]}" | sort -nr
else
	echo "Invalid choice. Please enter 1 (for ascending) or 2 (for descending)"
fi
}

is_sort $num
