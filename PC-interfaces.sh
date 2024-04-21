#!/bin/sh

# Configure PC1
sudo docker exec clab-project-PC1 ip link set eth1 up
sudo docker exec clab-project-PC1 ip addr add 192.168.4.2/24 dev eth1
sudo docker exec clab-project-PC1 ip route add 192.168.0.0/16 via 192.168.4.1 dev eth1
sudo docker exec clab-project-PC1 ip route add 10.10.10.0/24 via 192.168.4.1 dev eth1

# Configure PC2
sudo docker exec clab-project-PC2 ip link set eth1 up
sudo docker exec clab-project-PC2 ip addr add 192.168.5.2/24 dev eth1
sudo docker exec clab-project-PC2 ip route add 192.168.0.0/16 via 192.168.5.1 dev eth1
sudo docker exec clab-project-PC2 ip route add 10.10.10.0/24 via 192.168.5.1 dev eth1

# Configure PC3
sudo docker exec clab-project-PC3 ip link set eth1 up
sudo docker exec clab-project-PC3 ip addr add 192.168.6.2/24 dev eth1
sudo docker exec clab-project-PC3 ip route add 192.168.0.0/16 via 192.168.6.1 dev eth1
sudo docker exec clab-project-PC3 ip route add 10.10.10.0/24 via 192.168.6.1 dev eth1
