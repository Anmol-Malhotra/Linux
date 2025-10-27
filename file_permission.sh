echo "Enter the file name"
read filename
if [ ! -e "$filename" ]; then
        echo "The file does not exists."
	exit 1
fi

if [ -r "$filename" ]; then
        echo "$filename is a readable file."
else
	echo "$filename is not readable."
fi

if [ -x "$filename" ]; then
        echo "$filename is an executable file."
else
        echo "$filename is not executable."
fi

if [ -w "$filename" ]; then
        echo "$filename is a writable file."
else
        echo "$filename is not writable."
fi
