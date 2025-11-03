read -p "Enter the directory path: " dir

if [ ! -d "$dir" ]; then
        echo "Directory does not exists."
        exit 1
fi

if [ -d "$dir" ]; then
        read -p "Enter p for prefix or s for suffix: " choice
        if [ "$choice" == 'p' ]; then
                read -p "Enter text to be entered in prefix: " text
                for path in "$dir"/*; do
                        base="$(basename "$path")"      #To extract the file name from it's given location
                        newname="${text}${base}"
                        mv -i -- "$path" "$dir/$newname"
                done
        elif [ "$choice" == 's' ]; then
                read -p "Enter text to be entered in suffix: " text
                for path in "$dir"/*; do
                        base="$(basename "$path")"      #To extract the file name from it's given location
                        newname="${base}${text}"
                        mv -i -- "$path" "$dir/$newname"
                done
        else
                echo "Invalid choice..."
        fi
fi
