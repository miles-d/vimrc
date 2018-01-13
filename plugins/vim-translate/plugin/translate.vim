" translate.vim - use `trans` tool
" see https://github.com/soimort/translate-shell

if exists("g:loaded_translate") || &cp || v:version < 700
  finish
endif
let g:loaded_translate = 1

function! Trans(from_lang, to_lang, text)
  execute "!trans " . a:from_lang . ":" . a:to_lang . " " . a:text
endfunction
