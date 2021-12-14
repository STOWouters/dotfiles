" =======
" GENERAL
" =======

" Required for Vundle plugin
set nocompatible
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Manage plugins through Vundle
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

" Required for Vundle plugin
filetype plugin indent on

" Set default indents
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Display relative line numbers and cursorline
set relativenumber
set cursorline

" Set default column width
set colorcolumn=79
set nowrap
set linebreak

" Highlight search results
set hls

" Enable syntax highlighting
syntax enable
set t_Co=256
colorscheme solarized

" ===============
" PLUGIN SETTINGS
" ===============

" -------
" AIRLINE
" -------
let g:airline_theme='solarized'
