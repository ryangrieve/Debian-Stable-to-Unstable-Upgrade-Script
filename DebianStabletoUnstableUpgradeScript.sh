#!/bin/bash

# Comment out the unnecessary stable repositories and add the new sid/unstable repositories
sudo sed -i '/^deb/s/^/#/' /etc/apt/sources.list
sudo sed -i '/^deb-src/s/^/#/' /etc/apt/sources.list
sudo echo 'deb http://deb.debian.org/debian sid main' | sudo tee -a /etc/apt/sources.list
sudo echo 'deb-src http://deb.debian.org/debian sid main' | sudo tee -a /etc/apt/sources.list

# Update apt and upgrade the system
sudo apt update && sudo apt dist-upgrade -y
echo "Upgrade completed, restarting in 5 seconds..."
sleep 5
sudo reboot
