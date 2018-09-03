" Hi, This is my .vimrc file

" This is needed for Vundle
set nocompatible
filetype off

" Load Vundle, the vim pluging manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Enable Vundle
Plugin 'VundleVim/Vundle.vim'

" File browser
Plugin 'scrooloose/nerdtree'

" Better status line
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Auto indentation for python
Plugin 'vim-scripts/indentpython.vim'

" Autp-complete, but you have to install each language induvidually see: 
" http://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Automatically closes brackets
Plugin 'jiangmiao/auto-pairs'

" Visual Studio-like colorscheme
Plugin 'tomasiser/vim-code-dark'

call vundle#end()

" Auto indent
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Ignore cache/vendor folders
set wildignore+=*/node_modules/*,*/dist/*,*/__pycache__/*,*/vendor/*

" Ignore C/C++ Object files
set wildignore+=*.o

" Ignore C/C++ QT files
set wildignore+=moc_*.cpp,moc_*.h

" Igore Unity asset meta-files
set wildignore+=*/Assets/*.meta

" Disable swap file
set noswapfile

" Enable line numbers
set number

" Disable line wrapping
set nowrap

" Make backspace behaive like in other editors
set backspace=indent,eol,start

" Other options 
set incsearch
set showmode
set wildmenu
set ruler
set lz
set hid
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set ai
set si
set cin
set mouse=a
set numberwidth=6
set encoding=utf-8

" Enable relative line numbering
set rnu

" This is important for the powerline plugin
set laststatus=2

" Set the color scheme
colorscheme codedark

" Make a slight customization with the cursorline
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=darkgrey

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=$HOME/.vimundo
set undolevels=1000
set undoreload=10000

" Bind NERDTree
map <C-n> :NERDTreeToggle<CR>

" Bind ; as : as it's more convienent
noremap ; :

" Unbind Ex mode
noremap Q <nop>

" Unbind help menu
noremap <F1> <nop>

" Unbind another help menu
noremap <S-k> <nop>

