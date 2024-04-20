#!/bin/bash

sudo apt-get install exa \
	fdfind \
	tmux

# nvim-plug
if [ ! -f ${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim" ]; then
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
nvim +'PlugInstall --sync' +qa

# asdf
if [ ! -d ~/.asdf ]; then
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf
fi
