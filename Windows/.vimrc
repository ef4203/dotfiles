" Enable line numbers
set number

" Make backspace behave like in other editors
set backspace=indent,eol,start

" Fix Search
set incsearch

" Set correct tab spacing
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set ai

" Enable cursor line
set cursorline

" Access the system clipboard
" (On DOS, it's 'unnamed' without plus)
set clipboard=unnamed

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

" Ctrl Backspace delete last word
imap <C-BS> <C-W>
