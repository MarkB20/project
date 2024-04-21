#!/bin/bash

# Define an associative array of connections and their destinations
declare -A connections=(
    ["PC1 to PC2"]="192.168.5.2"
    ["PC1 to PC3"]="192.168.6.2"
    ["PC2 to PC3"]="192.168.6.2"
)

# Initialize an empty array to store the results of each connection test
results=()

# Loop through the connections to test each one with traceroute
for connection in "${!connections[@]}"; do
    destination="${connections[$connection]}"

    # Perform traceroute and capture the output and exit code
    output=$(sudo docker exec clab-project-PC1 traceroute "$destination" 2>&1)
    exit_code=$?

    # Print the traceroute output
    echo "Traceroute output between $connection:"
    echo "$output"
    echo

    # Determine if the traceroute command was successful
    if [[ $exit_code -eq 0 ]]; then
        results+=("$connection: Success")
    else
        results+=("$connection: Failed")
    fi
done

# Display the summary of results at the end
echo "Summary of traceroute results:"
for result in "${results[@]}"; do
    echo "$result"
done
