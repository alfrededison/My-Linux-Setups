#!/bin/bash

echo -e "\u001b[7m Installing oh-my-zsh...\u001b[0m"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "\u001b[7m Cloning zsh plugins...\u001b[0m"
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips

echo -e "\u001b[7m Installing dot files...\u001b[0m"
ln -sf ~/.setup/.gitconfig ~/
ln -sf ~/.setup/.zshrc ~/
ln -sf ~/.setup/.vimrc ~/
ln -sf ~/.setup/.vimrc_tabs ~/

echo -e "\u001b[7m Installing vim plugins...\u001b[0m"
vim +PlugInstall +qall

echo -e "\u001b[7m Done. Please restart terminal!\u001b[0m"

