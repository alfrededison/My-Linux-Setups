#!/bin/bash

echo -e "\u001b[7m Update vimrc config\u001b[0m"
sed -i "s|\" Plug 'Valloric/YouCompleteMe'|Plug 'Valloric/YouCompleteMe'|" ~/.vimrc

echo -e "\u001b[7m Install vim plugin...\u001b[0m"
vim +PlugInstall +qall

echo -e "\u001b[7m Install YCM completers...\u001b[0m"
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer
python3 install.py --ts-completer

echo -e "\u001b[7m Done.\u001b[0m"
