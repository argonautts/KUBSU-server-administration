#!/bin/bash

# run: bash script.sh /home/darwin/tasks/Kozin/firstTask/firstMethod/script.sh
# output: /home/darwin/tasks/Kozin/firstTask/firstMethod/script.sh: 35 lines

# check if there are any arguments
if [ "$#" -eq 0 ]; then
  echo "Usage: $0 file1 file2 ..."
  exit 1
fi

# loop through each argument (filename)
for file in "$@"; do
  # check if the file exists
  if [ ! -f "$file" ]; then
    echo "Error: file '$file' does not exist"
    continue
  fi
  # count the number of lines in the file
  lines=$(wc -l < "$file")
  # print the filename and number of lines
  echo "$file: $lines lines"
done
