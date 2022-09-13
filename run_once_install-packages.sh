#!/bin/bash

sudo apt-get install exa \
	fdfind \
	tmux

# Neovim 
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo mv ./nvim-linux64/bin/nvim /usr/local/bin
rm nvim-linux64.tar.gz
rm -rf nvim-linux64

# Neovim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
vim +'PlugInstall --sync' +qa

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
