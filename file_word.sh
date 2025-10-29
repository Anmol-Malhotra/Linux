# !/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <pattern> <file_name>"
	exit 1
fi

pattern=$1
file_name=$2
if [ ! -f "$file_name" ]; then
	echo "File not found."
	exit 1
fi

if [ $? == 0 ]; then
	echo "Match found for pattern $1 in file $2"
else
	echo "No match found."
fi

grep "$1" "$2"

