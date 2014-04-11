set nocompatible

set number

" Number of columns to use for tab
set tabstop=4
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

let g:syntastic_python_checker = 'pyflakes'

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

set laststatus=2
set encoding=utf-8
set t_Co=256

"Set abbreviations
abb ip import ipdb;ipdb.set_trace()

:nmap <CR> o<Esc>
:nmap Y y$

"Added solarized theme
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termtrans=1
" Just found on some blog and added 
" these solarized settings
"let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" Switch between tabs
:nmap ,t gt
:nmap ,T gT

" Navigate to top and bottom of block in js files
:nmap tp [{
:nmap bm ]}

" Mapping of python-match.vim
" Navigate to top and bottom of block
:nmap hp [%
:nmap hm ]%

" Show/Hide hidden characters
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab

"Enable neocomplcache
let g:neocomplcache_enable_at_startup = 1
call pathogen#infect()
