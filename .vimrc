set tabstop=2
set shiftwidth=2
set expandtab
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction
let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint'] " You shouldn't use 'tsc' checker.

" au BufNewFile,BufRead *.js set filetype=typescript
