#!/bin/bash

# Define an associative array of connections and their destinations
declare -A connections=(
    ["PC1 to PC2"]="192.168.5.2"
    ["PC1 to PC3"]="192.168.6.2"
    ["PC2 to PC3"]="192.168.6.2"
    ["PC3 to PC4"]="192.168.12.2"
    ["PC4 to PC5"]="192.168.13.2"
)

# Initialize an empty array to store the results of each connection test
results=()

# Loop through the connections to test each one with traceroute
for connection in "${!connections[@]}"; do
    destination="${connections[$connection]}"

    # Extract the source PC from the connection string
    source_pc=$(echo "$connection" | awk '{print $1}')

    # Determine the appropriate Docker command based on the source PC
    docker_command="docker exec clab-project-${source_pc}"

    # Perform traceroute and capture the output and exit code
    output=$(sudo $docker_command traceroute "$destination" 2>&1)
    exit_code=$?

    # Print the traceroute output
    echo "Traceroute output between $connection:"
    echo "$output"
    echo

    # Determine if the traceroute output shows any errors or if it reached the destination
    if [[ $exit_code -eq 0 ]] && [[ $output != *"!H"* ]] && [[ $output == *"$destination"* ]]; then
        results+=("$connection: Success")
    else
        results+=("$connection: warning")
    fi
done

# Display the summary of results at the end
echo "Summary of traceroute results:"
for result in "${results[@]}"; do
    echo "$result"
done
