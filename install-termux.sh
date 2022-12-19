#!/bin/bash

echo -e "\u001b[7m Customizing Termux theme...\u001b[0m"
mkdir -p ${HOME}/.termux
cat termux/colors.properties > ${HOME}/.termux/colors.properties

echo -e "\u001b[7m Installing Termux dependencies...\u001b[0m"
pkg update -y
pkg install -y curl zsh vim-python python cmake build-essential nodejs-lts

echo -e "\u001b[7m Done.\u001b[0m"
