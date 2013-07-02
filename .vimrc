set showcmd " Show command in status line
set ignorecase " Case insensitive matching
set smartcase " Smart case matching
set noautoread " file changes
set nocompatible " vim, not vi
set cmdheight=2
set undolevels=1000
set noerrorbells
set visualbell
set t_vb=
set textwidth=80
set title
set showmatch
set cursorline

" Run current file in Python
:map <F9> :!python3 %<CR>
:map <F8> :!python3 -i %<CR>

" Cursor wrapping
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Terminal colors
set langmenu=none
set term=builtin_ansi
let &t_Co=256

" Tabs, scroll offset
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent smartindent
set scrolloff=5

" Color scheme
colors zenburn
colorscheme zenburn
syntax on
filetype plugin indent on

" Line numbers
set number " Numbers on left
set ruler " Number on bar
" Mouse support for command line
set mouse=a

" Switching between buffers using ctrl-movement keys
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

"
" Statusline from github.com/remiprev/vimfiles
"
function! GetCWD()
	return expand(":pwd")
endfunction

function! IsHelp()
	return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
	return expand("%:t")==''?'<none>':expand("%:t")
endfunction

set statusline=%3*[%1*%{GetName()}%3*]%3*
set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
set statusline+=%3*fenc:%4*%{strlen(&fenc)?&fenc:'none'}%3*\ \ 
set statusline+=%3*ff:%4*%{&ff}%3*\ \ 
set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ \ 
set statusline+=%3*tab:%4*%{&ts}
set statusline+=%3*,%4*%{&sts}
set statusline+=%3*,%4*%{&sw}
set statusline+=%3*,%4*%{&et?'et':'noet'}\ \ 
set statusline+=%<%3*pwd:%4*%{getcwd()}\ \ 
set statusline+=%9*%=
set statusline+=%3*col:%4*%c\ \ 
set statusline+=%3*line:%4*%l\ \ 
set statusline+=%3*total:%4*%L\ 

" End statusline

" Nerd Tree jazz
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd vimenter * :wincmd l " Switch to non-NerdTree window on open
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Spell check
if v:version >= 700
    autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif

