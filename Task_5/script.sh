#!/bin/bash

# run: sudo script.sh

# loop through each file in the /var/log directory that ends in .log
for file in /var/log/*.log; do
  # get the last line of the file and save it to the logs.log file
  tail -n 1 "$file" >> /var/log/logs.log
done
