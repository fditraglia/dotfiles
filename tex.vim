function! Tex_ForwardSearchLaTeX()
  let cmd = 'evince_forward_search ' . fnamemodify(Tex_GetMainFileName(), ":p:r") .  '.pdf ' . line(".") . ' ' . expand("%:p")
  let output = system(cmd)
endfunction
let g:tex_IgnoredWarnings =
  \"Underfull\n".
  \"Overfull\n".
  \"specifier changed to\n".
  \"You have requested\n".
  \"Missing number, treated as zero.\n".
  \"There were undefined references\n"
  \"Citation %.%# undefined"
  \"LaTeX Font Warning:"
let g:Tex_IgnoreLevel = 8

" use latexmk for complilation with the bibtex option and output pdf
 let g:Tex_MultipleCompileFormats = 'pdf'
 let g:Tex_DefaultTargetFormat='pdf'
 let g:Tex_CompileRule_pdf = "latexmk -pdflatex='pdflatex -file-line-error -synctex=1 -interaction=nonstopmode' -bibtex -pdf $*"
