# !/bin/bash

echo "Enter a filename:"
read file

if [ ! -f "$file" ]; then                       ## -f checks if the file exists and is a regular file
        echo "Error: file '$file' not found."
        exit 1
fi

lines=$(wc -l < "$file")                       ## wc -l counts lines.
words=$(wc -w < "$file")                       ## wc -w counts words.
chars=$(wc -m < "$file")                       ## wc -m counts characters.

echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
