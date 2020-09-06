#!/bin/bash

echo -e "\u001b[7m Installing tmux tpm...\u001b[0m"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo -e "\u001b[7m Copying conf files...\u001b[0m"
ln -sf ~/.setup/extras/.tmux.conf ~/

echo -e "Then Press \u001b[7m Ctrl-a I \u001b[0m to install plugins, then QUIT tmux to continue installation."

read -p "Press any key to continue... " -n1 -s
tmux

echo -e "\u001b[7m Updating alias...\u001b[0m"
printf "alias tmuxrc=\"\$EDITOR ~/.tmux.conf\"\n" >> ~/.custom.zsh
printf "alias tmuxreload=\"tmux source ~/.tmux.conf\"\n" >> ~/.custom.zsh
printf "alias tmuxcustom=\"\$EDITOR ~/.custom.tmux.conf\"\n" >> ~/.custom.zsh

echo -e "\u001b[7m Done! Please restart tmux.\u001b[0m"
