echo "Enter a string"
read string

string_length()
{
	echo "The length of string is: ${#1}"
}
string_concatenation()
{
	echo "Enter the second string"
	read sec_string
	concatenate=${1}${sec_string}
	echo "Concatenated string is $concatenate"
}
string_comparison()
{
	echo "Enter the second string"
        read sec_string
	if [ ${1} == ${sec_string} ]; then
		echo "Strings are same"
	else
		echo "Strings are different"
	fi
}

#Options
echo "Enter 1 for string length."
echo "Enter 2 for string concatenation."
echo "Enter 3 for string comparison."
echo "Enter your choice"
read choice
case $choice in
        1) string_length $string;;
        2) string_concatenation $string;;
        3) string_comparison $string;;
        *) echo "Enter a valid choice";;
esac
