" selecta.vim - use grb's selecta to select things

if exists("g:loaded_selecta") || &cp || v:version < 700
  finish
endif
let g:loaded_selecta = 1

if !exists("g:selecta_height")
  let g:selecta_height = 25
endif

" Run a given vim command on the results of fuzzy selecting from a given shell
" command.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta --height " . g:selecta_height . " " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

function! SelectaGitFile(allowed, not_allowed)
  if len(a:allowed) ==# 0 && len(a:not_allowed) ==# 0
    call SelectaCommand("git ls-files", "", ":e")
  elseif len(a:allowed) > 0 && len(a:not_allowed) ==# 0
    call SelectaCommand("git ls-files \| grep " . shellescape(a:allowed), "", ":e")
  elseif len(a:allowed) > 0 && len(a:not_allowed) > 0
    call SelectaCommand("git ls-files \| grep " . shellescape(a:allowed) . " \| grep -v " . shellescape(a:not_allowed), "", ":e")
  else
    call SelectaCommand("git ls-files \| grep -v " . shellescape(a:not_allowed), "", ":e")
  endif
endfunction

function! SelectaFile(path, glob)
  call SelectaCommand("find " . a:path . "/* -type f -and -iname '" . a:glob . "' -and -not -iname '*.pyc'", "", ":e")
endfunction

function! SelectaIdentifier()
  " Yank the word under the cursor into the z register
  normal "zyiw
  " Fuzzy match files in the current directory, starting with the word under
  " the cursor
  call SelectaCommand("git ls-files", "-s " . @z, ":e")
endfunction

function! SelectaBuffer()
  let bufnrs = filter(range(1, bufnr("$")), 'buflisted(v:val)')
  let buffers = map(bufnrs, 'bufname(v:val)')
  call SelectaCommand('echo "' . join(buffers, "\n") . '"', "", ":b")
endfunction

function! SelectaArgs()
  let args = argv()
  call SelectaCommand('echo "' . join(args, "\n") . '"', "", ":b")
endfunction
