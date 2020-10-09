autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set nu

" set backup " Store temporary files in a central spot
set backupdir=~/.vim/tmp/backup/
set autoindent
set backspace=indent,eol,start " allow backspacing over everything in insert


set cmdheight=2

set diffopt+=iwhite
set encoding=utf8 " We write unicode so use utf8
set errorbells
set expandtab " Always use soft tabs
set hidden "If I close a buffer dont delete the changes
set history=10000
set hlsearch "Highlight results of a search
set ignorecase "Dont care about case when searching
set incsearch " Show search results while doing /
set laststatus=2 " Always have a status line regardless
"
set magic
set nocompatible
set noswapfile
set number
set numberwidth=5
set scrolloff=3 " keep more context when scrolling off the end of a buffer
set shell=bash " This makes RVM work inside Vim. I have no idea why.
set showcmd " display incomplete commands

set showmatch
set showmode " Always show mode
set showtabline=2
set smartindent " Be smart when indenting
set switchbuf=useopen
set t_Co=256 " If in terminal use 256 colors
set t_ti= t_te= " Prevent Vim from clobbering the scrollback buffer. See

"set shiftwidth=4
"set tabstop=4
"set softtabstop=4

set ts=4 sts=4 sw=4 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab

"
set title "Show a window title
"set textwidth=120
set undolevels=20 " Keep 20 undo levels
set visualbell "Make the screen flash on bell
set wildignore=*.swp,*.bak,*.pyc " Set wildignore to hid swp, bak and pyc files
set wildmenu " make tab completion for files/buffers act like bash
set wildmode=longest,list " use emacs-style tab completion when selecting files, etc
set winminheight=0
set winwidth=79
syn case match
syn sync minlines=80
syntax on " Enable highlighting for syntax
set autoread
set formatoptions-=cro
set mouse=a



