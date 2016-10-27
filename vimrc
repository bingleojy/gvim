" Author: BinglinLi
" Source:
"
"
" general setttings
syntax enable
syntax on

set t_Co=256
set cul
set shortmess=atI
autocmd InsertEnter * se cul
set ruler
set showcmd
set scrolloff=3
set laststatus=2
set autoindent
set smartindent
set cindent
set cinoptions=g0,:0,N-s,(0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set history=1000
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
set autoread
set completeopt=longest,menu
set autowrite
set magic
set guioptions-=T
set guioptions-=m
set nocompatible
set noeb
set confirm
set nobackup
set noswapfile
set ignorecase
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set iskeyword+=.
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,cp936,gb2312,gb18030
colorscheme desert
filetype on
filetype plugin on
filetype indent on

" Create file settings
autocmd BufNewFile *.py,*.sh,*.cmd exec "call SetTitle()"
func SetTitle()
    if expand("%:e) == 'sh'
        call setline(1,"#!/bin/bash")
        call append(line("."),"")
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# -*- encoding: utf-8 -*-")
        call append(line(".")+1,"")
endfunc
autocmd BufNewFile * normal G

execute pathogen#infect()
syntax on
filetype plugin indent on

" AutoPairs
let g:AutoPairsFlyMode = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
