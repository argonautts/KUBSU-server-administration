#!/bin/bash

# make it executable(`chmod +x script.sh`) if not executable
# run: bash script.sh /home/darwin/tasks/Kozin/

# check if the path argument is given
if [ -z "$1" ]; then
    echo "Usage: $0 path"
    exit 1
fi

# check if the path exists
if [ ! -d "$1" ]; then
    echo "Error: path '$1' does not exist"
    exit 1
fi

# loop through each subdirectory in the specified path
for dir in "$1"/*; do
    # get the name of the subdirectory
    dir_name=$(basename "$dir")
    # count the number of elements in the subdirectory
    num_elements=$(ls "$dir" | wc -l)
    # create a file with the subdirectory name and the number of elements as its content
    echo "$num_elements" > "$dir_name.txt"
done
