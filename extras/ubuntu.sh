#!/bin/bash

echo -e "\u001b[7m Installing dependencies...\u001b[0m"
sudo apt update
sudo apt install -y curl zsh vim python python3-dev cmake build-essential nodejs npm
echo -e "\u001b[7m Done.\u001b[0m"
