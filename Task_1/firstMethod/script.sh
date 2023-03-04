#!/bin/bash

# My decision
# run: bash script.sh output.txt 10

# Check that the script has been called with two arguments (file name and timeframe)
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file name> <timeframe in seconds>"
    exit 1
fi

# Get the arguments
file_name=$1
timeframe=$2

# Main loop
start_time=$(date +%s)
while true; do
    # Get the current time and system load
    timestamp=$(date +"[%d.%m.%y %H:%M]")
    system_load=$(cat /proc/loadavg)

    # Write the data to the output file
    echo "$timestamp = $system_load" >> $file_name

    # Sleep for one second
    sleep 1
    
    # Check if the time frame has elapsed
    current_time=$(date +%s)
    elapsed_time=$((current_time - start_time))
    if [ "$elapsed_time" -ge "$timeframe" ]; then
        break
    fi
done
