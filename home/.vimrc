set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-vividchalk'
Plugin 'tomtom/tcomment_vim'
Plugin 'wesQ3/wombat.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

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

colorscheme ir_black

set guifont=Inconsolata-g\ for\ Powerline\ 11

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

let g:syntastic_enable_perl_checker = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
