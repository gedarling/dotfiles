set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-vividchalk'
Plugin 'tomtom/tcomment_vim'
Plugin 'kaicataldo/material.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'vim-perl/vim-perl'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'hashivim/vim-terraform'

filetype plugin indent on     " required!

"file rifling
function! DirCtrlP()
   let g:ctrlp_working_path_mode = 0
   CtrlP
endfunction

function! FileRelCtrlP()
   let g:ctrlp_working_path_mode = 'c'
   CtrlP
endfunction

" set matcher location and size
let g:ctrlp_match_window = 'top,order:ttb,min:5,max:30'

nnoremap <silent> <F3> :call DirCtrlP()<CR>
nnoremap <silent> <S-F3> :CtrlPClearCache<CR>
nnoremap <silent> <F4> :call FileRelCtrlP()<CR>
nnoremap <silent> <F5> :CtrlPBuffer<CR>

set number

colorscheme material

if (has("termguicolors"))
  set termguicolors
endif

set guifont=Inconsolata-g\ for\ Powerline\ 10
set guioptions-=T
set guioptions-=r

set undofile

"local undo directory
set undodir^=~/.vim/undo

"local swap directory
set directory=~/.vim/swap

"tab settings
set expandtab
set shiftwidth=3
set softtabstop=3

"case insensitve for search and replace
set ignorecase
"any upper case letters? just kidding about ignorecase
set smartcase

inoremap jj <Esc>

set noeb vb t_vb=

let g:syntastic_enable_perl_checker = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='material'

let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
