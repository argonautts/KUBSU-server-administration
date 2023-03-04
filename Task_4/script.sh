#!/bin/bash

# run: bash script.sh earth

# define an associative array of planets and their number of satellites
declare -A planets=(
  ["mercury"]=0
  ["venus"]=0
  ["earth"]=1
  ["mars"]=2
  ["jupiter"]=79
  ["saturn"]=82
  ["uranus"]=27
  ["neptune"]=14
)

# check if the planet argument is given
if [ -z "$1" ]; then
  echo "Usage: $0 planet"
  exit 1
fi

# check if the planet is recognized
if [ -z "${planets[$1]}" ]; then
  echo "Error: planet '$1' not recognized"
  exit 1
fi

# output the number of satellites for the planet
echo "${planets[$1]} satellites"
