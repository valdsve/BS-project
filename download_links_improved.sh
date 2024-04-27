#!/bin/bash

# Define the order of directories
directories=("Human_Paired_Transcripts" "Human_Single_Transcripts" "Mouse_Paired_Transcripts" "Mouse_Single_Transcripts")

# Flag to indicate if any text file is found and processed
found_text_file=false

# Iterate over each directory
for directory in "${directories[@]}"; do
    # Find the first text file in the directory
    text_file=$(find "$directory" -maxdepth 1 -type f -name '*.txt' | head -n 1)

    # If a text file is found
    if [ -n "$text_file" ]; then
        found_text_file=true

        # Read each line of the text file
        while IFS= read -r url; do
            # Use wget to download the file into the corresponding directory
            wget -P "$directory" "$url"
            # Alternatively, you can use curl:
            # curl -o "$directory/$(basename "$url")" "$url"
        done < "$text_file"
    fi
done

# If no text file is found in any directory
if ! $found_text_file; then
    echo "No text file found in the specified directories."
    exit 1
fi

