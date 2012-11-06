set nocompatible

set number

" Number of columns to use for tab
set tabstop=4
" Number of columns used by button >> and <<
set shiftwidth=4
" Tab key is treated as space
set expandtab

set incsearch

set hlsearch

" Don't use headecimal format while using <Ctrl>A and <Ctrl>X
set nrformats=

" Sysntax is used for folding.
set foldmethod=syntax

" Used in searching with /
set ignorecase
set smartcase

" There will always be 2 lines above/below the current curson position.
set scrolloff=2

" Copy the indentation of previous line.
set autoindent
set copyindent

set nobackup
set noswapfile

nmap ,/ :nohlsearch<CR>

" Vertical Split window will be created at right
set splitright
" Horizontal Split window will be created below the current one
set splitbelow

" While pasting a code snippet copied from the web, indentation is taken care of by this.
set pastetoggle=<F2>

" Takes care of proper indentation in Python files. Should be working in other
" languages as well.
filetype plugin indent on

call pathogen#infect()
