echo "Enter the file name"
read filename
if [ -e "$filename" ]; then
	echo "Printing the content of file."
	cat "$filename"
else
	echo "$filename does not exists."
	read -rp "Type Y/N to create a file." createfile
	if [ "$createfile" == "Y" ]; then
		touch "$filename"
		echo "File has been created"
	else
		echo "Process Terminated"
	fi
fi
