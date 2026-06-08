#!/bin/bash

# file-organizer: Sort files in a directory by extension

TARGET="${1:-.}"

if [ ! -d "$TARGET" ]; then
    echo "Error: '$TARGET' is not a valid directory."
    exit 1
fi

echo "Organizing files in: $TARGET"
count=0

for file in "$TARGET"/*; do
    [ -f "$file" ] || continue

    ext="${file##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    if [ "$ext" = "$file" ] || [ -z "$ext" ]; then
        ext="others"
    fi

    dest="$TARGET/$ext"
    mkdir -p "$dest"
    mv "$file" "$dest/"
    echo "  Moved: $(basename "$file") -> $ext/"
    ((count++))
done

echo ""
echo "Done. $count file(s) organized."
