" Load NeoBundle
source ~/.vimrc.neobundle

" Display Setting
" ----------------------------
set number
set title
set ruler
set laststatus=2
set ambiwidth=double

" Syntax color
" ---------------------------
set t_Co=256
syntax on
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" Edit Setting
" --------------------------
set autoindent
set smartindent
set showmatch
set backspace=indent,eol,start

set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

" tab Setting
" -------------------------
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround
set nowrap

" Search Setting
" --------------------------
set incsearch
set ignorecase


" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

filetype plugin indent on     " Required for NeoBundle
