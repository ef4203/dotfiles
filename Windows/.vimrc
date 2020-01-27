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

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

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

" Ignore JS/TS/Web Files
set wildignore+=*\\node_modules\\*
" Ignore C/C++ Object files
set wildignore+=*.o,*.obj,*.exe,*.out
" Ignore C#.NET Files
set wildignore+=*.Cache,*\\bin\\*,*\\tmp\\*,*\\obj\\*

" Fix indentation and encoding
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set ai
set mouse=a
set numberwidth=6
set encoding=utf-8

" Other options
set incsearch
set showmode
set wildmenu
set ruler
set lz
set hid
set si
set cin

" Set the color scheme
color desert

" Enable cursor line
set cursorline

" Access the system clipboard
set clipboard=unnamed

" Enable relative line numbering
set rnu

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

" Enable Syntax highlighting for typescript, no plugin required
autocmd BufNewFile,BufRead *.ts set syntax=javascript

" GVIM settings
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set guioptions=
set guifont=Consolas:h12

" CTRL+Backspace delete last word
imap <C-BS> <C-W>

" Spell checker
map <F6> :setlocal spell! spelllang=en_us<CR>

