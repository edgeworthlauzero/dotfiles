" Set plugins
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" Show current mode
set showmode
" Unable compatibility with vi
set nocompatible
" Show line number
set number
" Show current line in highlight
set cursorline
" Enable line wrap
set wrap
set wrapmargin=2
" Set tab to 4 space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
" Enable auto indent
set autoindent
" Show tab and extra space
set list
set listchars=tab:>.,trail:· 
" Show brackets match
set showmatch
" Show search content in highlight
set hlsearch
" Enable incremental search
set incsearch
" Enable case-insensitive search
set ignorecase
set smartcase
" Enable command completion
set wildmenu
set wildmode=list:longest,full
" Set split direction
set splitright
set splitbelow
" Set file enconding method to UTF-8
set encoding=utf-8
" Set number of history records
set history=1000
set undolevels=1000
" Disable auto backup
set nobackup
set nowritebackup
set noswapfile
" Enable file types detection
filetype on
" Enable code syntax highlight
syntax on
colorscheme onedark
" Set tab to tab when editing Makefile
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
