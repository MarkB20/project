#!/bin/sh
sudo systemctl start docker
clab deploy --topo project.yml
