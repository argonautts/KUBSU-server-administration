#!/bin/bash

# run:

# get the value of the first LC_ environment variable
first_value=$(printenv | grep -m 1 "^LC_" | cut -d= -f2)

# loop through each LC_ environment variable
for var in $(printenv | grep "^LC_"); do
  # get the value of the current variable
  value=$(echo "$var" | cut -d= -f2)

  # compare the value of the current variable with the first one
  if [ "$value" != "$first_value" ]; then
    echo "Error: LC_ environment variables have different values"
    exit 1
  fi
done

echo "All LC_ environment variables have the same value: $first_value"
