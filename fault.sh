#!/bin/bash
echo "testing fault injection"

echo "testing before fault injection"
sudo docker exec clab-project-PC3 traceroute 192.168.5.2

echo "setting router2 eth1 connection to routerHub down"
sudo docker exec -d clab-project-router2 ip link set dev eth1 down

echo "testing after fault injection"
sudo docker exec clab-project-PC3 traceroute 192.168.5.2

#resting changes
sudo docker exec -d clab-project-router2 ip link set dev eth1 up
