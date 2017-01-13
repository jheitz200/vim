syntax on
colo trogdor

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'git@github.com:vim-scripts/ScrollColors.git'
" Plugin 'git@github.com:fatih/vim-go.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map ,t <Esc>:!prove -v %<CR>
map ,p 1yiwoprint "<Esc>pa #-> (" . $<Esc>pa . ")\n";<Esc>==
map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-x> <C-w>x
map <F5> :vertical silent res +3<CR>
map <F6> :vertical silent res -3<CR>

let mapleader = ","

set tabstop=4
set expandtab
set splitright


" Undo forever
set undofile                       " so is persistent undo ...
set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line
set undolevels=1000                " maximum number of changes that can be undone
set undoreload=10000               " maximum number lines to save for undo on a buffer reload
set backup
set backupdir=$HOME/.vimbackup/    " but not when they clog .
set directory=$HOME/.vimswap/      " Same for swap files
set viewdir=$HOME/.vimviews/       " same for view files
set undodir=$HOME/.vimviews/       " same for view files
"" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'
