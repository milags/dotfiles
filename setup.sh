#!/bin/bash

# install oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install pure prompt https://github.com/sindresorhus/pure/tree/92b8e90
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# create symlinks in home directory
for dotfile in .zshrc .vimrc .gitconfig
do
	ln -s $PWD/$dotfile $HOME/$dotfile
done

# platform specific 

echo done
