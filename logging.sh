#!/bin/bash

# Create a directory to store log files if it doesn't exist
mkdir -p logs

# Function to capture traffic on a specific interface and log it using Wireshark
capture_traffic() {
    local router="$1"
    local interface="$2"
    local output_file="logs/${interface}_traffic.pcap"

    echo "Capturing traffic on interface $interface of $router..."
    # Start tcpdump and pipe output to Wireshark, then capture the PID
    timeout 10 sudo ip netns exec "clab-project-$router" tcpdump -U -n -i "$interface" -w "$output_file" | wireshark -k -i -
    echo "Traffic capture on interface $interface of $router completed. Log file saved to $output_file."
}

# Capture traffic for each interface on routerHub
capture_traffic "routerHub" "eth1"
capture_traffic "routerHub" "eth2"
capture_traffic "routerHub" "eth3"
capture_traffic "routerHub" "eth4"
capture_traffic "routerHub" "eth5"
capture_traffic "routerHub" "eth6"



