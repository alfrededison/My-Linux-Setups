#!/bin/bash

echo -e "\u001b[7m Installing vim dotfiles...\u001b[0m"
cat vim/.vimrc > ${HOME}/.vimrc 
cat vim/.vimrc_tabs > ${HOME}/.vimrc_tabs 

echo -e "\u001b[7m Installing vim plugins...\u001b[0m"
vim +PlugInstall +qall
