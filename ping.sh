#!/bin/bash

echo "Testing connection between PC1 and Router1..."
sudo docker exec clab-project-PC1 ping -c1 192.168.1.1
echo "Connection test between PC1 and Router1 completed.


"

echo "Testing connection between PC2 and Router2..."
sudo docker exec clab-project-PC2 ping -c1 192.168.5.1
echo "Connection test between PC2 and Router2 completed.


"

echo "Testing connection between PC3 and Router3..."
sudo docker exec clab-project-PC3 ping -c1 192.168.6.1
echo "Connection test between PC3 and Router3 completed.


"