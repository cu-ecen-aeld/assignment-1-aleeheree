#!/bin/bash
filesdir=$1
searchstr=$2

if [ "$#" -ne 2 ] ; then 
echo "Error: two arguments required - <filesdir> and <searchstr>"
exit 1
fi

if [ ! -d "$filesdir" ]; then 
echo "Error: $filesdir does not represent a directory on the filesystem"
exit 1
fi

# Count the number of files in the directory and its subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Count the number of lines matching the search string
num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"

exit 0
