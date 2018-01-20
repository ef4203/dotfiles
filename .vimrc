" I mostly copied this vimrc.

set nocompatible
filetype off

filetype plugin indent on

syntax on

" Ignore various cache/vendor folders
set wildignore+=*/node_modules/*,*/dist/*,*/__pycache__/*

" Ignore C/C++ Object files
set wildignore+=*.o

" Ignore generated C/C++ Qt files
set wildignore+=moc_*.cpp,moc_*.h

" Ignore generated C/C++ Qt files
set wildignore+=moc_*.cpp,moc_*.h

" Ignore Unity asset meta-files
set wildignore+=*/Assets/*.meta

" Disable swap file.
set noswapfile

" Enable line numbers
set number

" Don't wrap lines
set nowrap

" Let backspace delete indentations, newlines, and don't make it stop after
" reaching the start of your insert mode
set backspace=indent,eol,start

" Other options 
set incsearch
set showmode
set nocompatible
filetype on
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
set cursorline
set numberwidth=6
set encoding=utf-8

" Enable relative line numbering
set rnu

" Customize our status line
set statusline=%f%m%r%h%w\ 
set statusline+=[%{&ff}]
set statusline+=%=
set statusline+=[\%03.3b/\%02.2B]\ [POS=%04v]

set laststatus=2

" Make a slight customization with the cursorline to the ron theme
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=$HOME/.vimundo
set undolevels=1000
set undoreload=10000

" Use ; as :
" Very convenient as you don't have to press shift to run commands
nnoremap ; :

" Unbind Q (it used to take you into Ex mode)
nnoremap Q <nop>

" Unbind F1 (it used to show you a help menu)
nnoremap <F1> <nop>

" Unbind Shift+K, it's previously used for opening manual or help or something
map <S-k> <Nop>

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

nnoremap <silent> <F5> :lnext<CR>
nnoremap <silent> <F6> :lprev<CR>
nnoremap <silent> <C-Space> :ll<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_cpp_checker = 0
let g:syntastic_cpp_checkers=['']

let mapleader = "\<Space>"
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType cpp nmap <leader>f <Plug>(operator-clang-format)
au FileType cpp nmap <leader>h :call CurtineIncSw()<CR>

au FileType javascript setlocal ts=2 sw=2 sts=2
au FileType html setlocal ts=2 sw=2 sts=2

nnoremap <silent> <C-B> :CtrlPBuffer<CR>
nnoremap <silent> <C-K> :CtrlPMixed<CR>

" clang-format extension options
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType javascript ClangFormatAutoDisable

" clang_complete
let g:clang_library_path='/usr/local/lib/libclang.so'
let g:clang_auto_select=1
let g:clang_close_preview=1

" auto-pairs
" let g:AutoPairsMapCR = 0
" imap <silent><CR> <CR><Plug>AutoPairsReturn

" Complete
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
