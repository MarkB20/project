#!/bin/bash

echo "Testing connection between PC1 and Router1..."
sudo docker exec clab-project-PC1 ping -c 3 192.168.11.1
echo "Connection test between PC1 and Router1 completed.


"

echo "Testing connection between PC2 and Router2..."
sudo docker exec clab-project-PC2 ping -c 3 192.168.12.1
echo "Connection test between PC2 and Router2 completed.


"

echo "Testing connection between PC3 and Router3..."
sudo docker exec clab-project-PC3 ping -c 3 192.168.13.1
echo "Connection test between PC3 and Router3 completed.


"


echo "Testing connection between Router1 and Router4..."
sudo docker exec clab-project-router1 ping -c 3 192.168.10.1
echo "Connection test between Router1 and Router4 completed.


"

echo "Testing connection between Router2 and Router4..."
sudo docker exec clab-project-router2 ping -c 3 192.168.4.2
echo "Connection test between Router2 and Router4 completed.


"

echo "Testing connection between Router3 and Router4..."
sudo docker exec clab-project-router3 ping -c 3 192.168.4.3
echo "Connection test between Router3 and Router4 completed.

"
