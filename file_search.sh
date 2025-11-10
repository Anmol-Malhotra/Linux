read -p "Enter the directory path: " dir
if [ ! -d "$dir" ]; then
	echo "Directory not found..."
	exit 1
fi

	file_store=(-type f)
	echo "How do you want to search your file?"
	echo "By file extension"
	echo "By file size"
	read -p "Enter 'e' for search by file extension or 's' for search by file size: " choice
	if [ -z "$choice" ]; then
		echo "No input."
		exit 1
	fi
	if [ "$choice" == 'e' ]; then
		read -p "Enter the extension type(eg txt/sh/pdf): " ext
		file_store+=(-name "*.$ext")
	elif [ "$choice" == 's' ]; then
		read -p "Enter size expression(eg +1MB/-50kb): " file_size
		file_store+=(-size "$file_size")
	else
		echo "Invalid input. Enter 'e' for search by file extension or 's' for search by file size"
	fi
	result=($(find "$dir" "${file_store[@]}"))
                for i in "${result[@]}";
                do
                        echo "$i"
                done

