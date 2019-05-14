" Vundle stuff
set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Load plugin manager
Plugin 'VundleVim/Vundle.vim'

" Automatically close brackets
Plugin 'jiangmiao/auto-pairs'

" Editorconfig
Plugin 'editorconfig/editorconfig-vim'

" Allow plugins to define their own operator
Plugin 'kana/vim-operator-user'

" clang-format plugin
Plugin 'rhysd/vim-clang-format'

" Color theme (Use the original for gvim on windows)
Plugin 'ef4203/vim-code-dark'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" File tree
Plugin 'scrooloose/nerdtree'

" Auto completer
" Plugin 'Valloric/YouCompleteMe'

" Code formater
Plugin 'prettier/vim-prettier'

call vundle#end()

" Keep in mind to adjust this on DOS, e.g. change / to \\

" Ignore JS/TS/Web Stack Files
set wildignore+=*/node_modules/*

" Ignore C/C++ Object files
set wildignore+=*.o,*.obj,*.exe,*.out

" Ignore C#.NET Files
set wildignore+=*.Cache,*/bin/*,*/tmp/*,*/obj/*

" Ignore Python Files
set wildignore+=*/__pycache__/*,*.pyc

" Auto indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Disable swap file
set noswapfile

" Enable line numbers
set number

" Disable line wrapping
set nowrap

" Make backspace behave like in other editors
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

" Set the colorscheme
colorscheme codedark
set cursorline

" Access the system clipboard
" (On DOS, it's 'unnamed' without plus)
set clipboard=unnamedplus

" Enable relative line numbering
set rnu

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=$HOME/.vimundo
set undolevels=1000
set undoreload=10000

" Bind ; as : as it's more convenient
noremap ; :

" Unbind Ex mode
noremap Q <nop>

" Unbind help menu
noremap <F1> <nop>

" Unbind another help menu
noremap <S-k> <nop>

" remove delay when pressing O
set timeout ttimeoutlen=100

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map F6 to spellchecking
map <F6> :setlocal spell! spelllang=en_us<CR>

" (HARD MODE)
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" (GOD MODE)
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Enable autoformat on save
autocmd FileType c,cpp ClangFormatAutoEnable

" Map prettier
noremap <C-f> :Prettier

" Enable Syntax highlighting for typescript, no plugin required
autocmd BufNewFile,BufRead *.ts set syntax=javascript

" Open file tree
map <C-n> :NERDTreeToggle<CR>

" Disable Terminal bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Ctrl Backspace delete last word
imap <C-BS> <C-W>
