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

" Vertical Split window will be created at right
set splitright
" Horizontal Split window will be created below the current one
set splitbelow

" Vim forgets all smartness it has about indenting and just switches to paste
" mode and doesn't apply any indentation of its own else it would have led to
" cascading indentation.
set pastetoggle=<F2>

" Takes care of proper indentation in Python files. Should be working in other
" languages as well.
filetype plugin indent on

" Mappings
nmap ,/ :nohlsearch<CR>
"Can use ; instead of <shift>:
"But this led to problem when search for a character with 'f' and then moving
"to the next occurence of character. So comment
"nnoremap ; : 
" To move between windows
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k

set exrc            "Enable per directory .vimrc files
set secure          "Disable unsafe commands in local .vimrc

nmap <C-d> ebdw

let g:CommandTMaxHeight = 10

"Enable neocomplcache
let g:neocomplcache_enable_at_startup = 1
call pathogen#infect()
