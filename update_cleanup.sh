#!/bin/bash
echo "Updating system..."
sudo apt update -y && sudo apt upgrade -y
echo "Cleaning up..."
sudo apt autoremove -y && sudo apt autoclean -y
echo "System update and cleanup done!"
