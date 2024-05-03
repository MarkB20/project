#!/bin/bash

# Run docker exec and pings as an if statment and says if the ping was a Success or Fail
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

echo "Testing connection between PC4 and Router4..."
if sudo docker exec clab-project-PC4 ping -c1 192.168.12.1 >/dev/null; then
    echo "Connection test between PC4 and Router4: Success"
else
    echo "Connection test between PC4 and Router4: Failed"
fi
echo

echo "Testing connection between PC5 and Router5..."
if sudo docker exec clab-project-PC3 ping -c1 192.168.13.1 >/dev/null; then
    echo "Connection test between PC5 and Router5: Success"
else
    echo "Connection test between PC5 and Router5: Failed"
fi
echo

echo "Testing connection between PC6 and srlRouter1..."
if sudo docker exec clab-project-PC6 ping -c1 192.168.9.1 >/dev/null; then
    echo "Connection test between PC6 and srlRouter1: Success"
else
    echo "Connection test between PC6 and srlRouter1: Failed"
fi
echo

