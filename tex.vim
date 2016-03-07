set sw=2
set expandtab
set iskeyword+=:
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = "latexmk -pdflatex='pdflatex -file-line-error -synctex=1 -interaction=nonstopmode' -bibtex -pdf $*"

let g:Tex_Folding = 0
let g:Tex_PromptedCommands = 'footnote,cite,pageref,label,g,emph'
let g:Tex_ViewRule_pdf = 'okular'

let g:Tex_IgnoredWarnings =
			\"Underfull\n".
			\"Overfull\n".
			\"specifier changed to\n".
			\"You have requested\n".
			\"Missing number, treated as zero.\n".
			\"There were undefined references\n".
			\"Citation %.%# undefined\n".
			\'LaTeX Font Warning:'"
" This number N says that latex-suite should ignore the first N of the above.
" let g:Tex_IgnoreLevel = 8
