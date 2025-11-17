read -p "Enter a string: " string
rev=$(echo "$string" | rev)
if [[ "$string" == "$rev" ]]; then
        echo "$string is a palindrome...."
else
        echo "$string is not a palindrome...."
i
