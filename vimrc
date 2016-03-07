" For pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on " also used by vimlatex suite

" vimlatex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
" enable jumping between matching keywords with %
set nocompatible
filetype plugin on
runtime macros/matchit.vim

set guifont=Monospace\ 12
set background=dark
" colorscheme desert
colorscheme moria
syntax on
" line numbers
set number
" word wrap without linebreaks
set wrap
set linebreak
set nolist

" mappings to traverse the buffer list
noremap <silent> [b :bprevious<CR>
noremap <silent> ]b :bnext<CR>
noremap <silent> [B :bfirst<CR>
noremap <silent> ]B :blast<CR>

" use two spaces instead of tabs and when deleting, back up by tabs
set tabstop=2 
set shiftwidth=2 
set expandtab
set softtabstop=2
set autoindent
