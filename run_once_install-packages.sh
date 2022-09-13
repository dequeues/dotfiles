#!/bin/bash

sudo apt-get install exa \
	neovim \
	fdfind \
	tmux

# Neovim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
vim +'PlugInstall --sync' +qa

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
