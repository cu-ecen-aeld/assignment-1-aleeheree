#!/bin/bash

writefile=$1
writestr=$2

if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments are required - <writefile> and <writestr>"
    exit 1
fi

# Create the directory path for the file if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Attempt to write to the file
if echo "$writestr" > "$writefile"; then
    echo "File created: $writefile with content: $writestr"
else
    echo "Error: Could not create or write to the file $writefile"
    exit 1
fi

exit 0
