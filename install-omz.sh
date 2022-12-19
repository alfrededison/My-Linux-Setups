#!/bin/bash

echo -e "\u001b[7m Installing oh-my-zsh...\u001b[0m"
echo -e "Press \u001b[7m Y \u001b[0m when you are asked to update shell to zsh, then QUIT zsh to continue other installations."
read -p "Press any key to continue... " -n1 -s

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "\u001b[7m Done. Please restart terminal!\u001b[0m"

