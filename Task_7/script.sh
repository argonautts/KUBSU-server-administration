#!/bin/bash

# run: bash script.sh

# loop through each path in the PATH environment variable
IFS=':' read -ra paths <<< "$PATH"
for path in "${paths[@]}"; do
  # get the number of files in the path and print it
  num_files=$(find "$path" -maxdepth 1 -type f | wc -l)
  echo "$path: $num_files files"
done
