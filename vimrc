" enable jumping between matching keywords with %
set nocompatible
filetype plugin on
runtime macros/matchit.vim

set background=dark
colorscheme desert
syntax on
" line numbers
set number
" word wrap without linebreaks
set wrap
set linebreak
set nolist

" options for plasticboy/vim-markdown
" turn off folding
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1

" use two spaces instead of tabs and when deleting, back up by tabs
set tabstop=2 
set shiftwidth=2 
set expandtab
set softtabstop=2
set autoindent
" everything else is required for vim-latex
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" use latexmk for complilation with the bibtex option and output pdf
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = "/usr/bin/latexmk -bibtex -pdf $*"
