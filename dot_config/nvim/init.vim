set termguicolors

call plug#begin()

Plug 'gpanders/editorconfig.nvim'
Plug 'feline-nvim/feline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

lua require('main')
