" Joe's .vimrc Version 3.0
" Last edit: 15 April 2014

set nocompatible " vim
filetype off

"
" Vundle setup
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Plugin 'gmarik/vundle' 

" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

" Airline - statusbar
Bundle 'bling/vim-airline'

" Fugitive - Git integration
Plugin 'tpope/vim-fugitive'

" Tagbar - requires ctags
Plugin 'majutsushi/tagbar'

" Rainbow parens.
Bundle 'luochen1990/rainbow'

"
" end Vundle setup
"

filetype plugin indent on

" """"""""""""""""
" General Settings
" """"""""""""""""

set shell=/bin/sh
set syntax=on
set cursorline " highlight cursor line
set mouse=a " Mouse support

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent smartindent
set scrolloff=5 " keep min 5 lines at top/bottom while scrolling
set undolevels=1000 " keep lots of history

" Maximum line length
set colorcolumn=+1 " color the column after textwidth
set textwidth=78

" Line numbers
set number " numbers on left
set ruler " number on bar

" Keep backups in a backup directory
set backupdir=~/.vimbackup
set directory=~/.vimbackup

" Sensible cursor movement around wrapped lines

" Terminal settings
set term=xterm-256color
let &t_Co=256

" Solarized config
syntax enable
set background=dark
colorscheme solarized

" Airline config
set laststatus=2
let g:airline_powerline_fonts = 1


" Leader settings
let mapleader=" "
map <Leader>m :TagbarToggle<CR> " toggle tagbar
call togglebg#map("<Leader>c")
