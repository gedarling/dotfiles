set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'tpope/vim-sensible'
Plug 'tomtom/tcomment_vim'
Plug 'kaicataldo/material.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'vim-perl/vim-perl'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'hashivim/vim-terraform'
Plug 'rbong/vim-flog'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

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

set guifont=Inconsolata-g\ for\ Powerline:h10
set guioptions-=T
set guioptions-=r

set undofile

if !has('nvim')
"local undo directory
set undodir^=~/.vim/undo

"local swap directory
set directory=~/.vim/swap
endif

if has('nvim')
"local undo directory
set undodir^=~/.vim/nvim-undo

"local swap directory
set directory=~/.vim/nvim-swap
set mouse=a
endif

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
