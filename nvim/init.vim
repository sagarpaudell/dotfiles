set exrc
set guicursor=
set relativenumber
set nohlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab
set smartindent
set nu
set nohlsearch
set hidden

set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
set incsearch
set scrolloff=8
set termguicolors
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set cmdheight=2
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/popup.nvim'
call plug#end()

colorscheme gruvbox
let mapleader = " "
nnoremap <leader>ps  :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
