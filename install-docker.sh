#!/bin/bash

# update and upgrade the system
sudo apt update && sudo apt upgrade -y

# remove previous docker installations
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

# install docker and compose
curl -fsSL https://get.Docker.com -o get-Docker.sh
sudo sh get-Docker.sh

# add current user to docker group
sudo usermod -aG docker $USER

# reboot the system 
sudo reboot