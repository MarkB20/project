#!/bin/bash

echo "Testing connection between PC1 and Router1..."
if sudo docker exec clab-project-PC1 ping -c1 192.168.1.1 >/dev/null; then
    echo "Connection test between PC1 and Router1: Success"
else
    echo "Connection test between PC1 and Router1: Failed"
fi
echo

echo "Testing connection between PC2 and Router2..."
if sudo docker exec clab-project-PC2 ping -c1 192.168.5.1 >/dev/null; then
    echo "Connection test between PC2 and Router2: Success"
else
    echo "Connection test between PC2 and Router2: Failed"
fi
echo

echo "Testing connection between PC3 and Router3..."
if sudo docker exec clab-project-PC3 ping -c1 192.168.6.1 >/dev/null; then
    echo "Connection test between PC3 and Router3: Success"
else
    echo "Connection test between PC3 and Router3: Failed"
fi
echo
