" Format code using clang-format
" Version 2023-11-10
if v:version < 700 || exists('loaded_clangformat') || &cp
  finish
endif

let loaded_clangformat = 1

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:clangformat = fnamemodify(s:path . '/../clang-format.py', ':p')

if has('python')
  let s:python_command = ' pyfile '
elseif has('python3')
  let s:python_command = ' py3file '
endif

function! s:FormatCode() range
  let command = a:firstline . ',' . a:lastline . s:python_command . s:clangformat
  echo command
  execute command
endfunction

command! -range FormatCode <line1>,<line2>call <SID>FormatCode()
