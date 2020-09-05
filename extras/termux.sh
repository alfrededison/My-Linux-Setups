#!/bin/bash

echo -e "\u001b[7m Customizing theme...\u001b[0m"
mkdir -p ~/.termux
cp ~/.setup/extras/colors.properties ~/.termux/

echo -e "\u001b[7m Installing dependencies...\u001b[0m"
pkg update -y
pkg install -y curl zsh vim-python python cmake build-essential nodejs-lts

echo -e "\u001b[7m Done.\u001b[0m"
