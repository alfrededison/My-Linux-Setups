#!/bin/bash

echo -e "\u001b[7m Installing dependencies...\u001b[0m"
pkg install -y git curl zsh vim-python python cmake nodejs-lts
echo -e "\u001b[7m Done.\u001b[0m"
