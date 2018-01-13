" grey.vim - toggle grey background

if exists("g:loaded_grey") || &cp || v:version < 700
  finish
endif
let g:loaded_grey = 1

if !exists("g:grey_colorschemes") || len(g:grey_colorschemes) < 2
  let g:grey_colorschemes = ['minilight', 'minidark']
endif

" Toggle between my two colorschemes
function! SwitchColor()
    if g:colors_name == g:grey_colorschemes[0]
        execute "colorscheme " . g:grey_colorschemes[1]
    elseif g:colors_name == g:grey_colorschemes[1]
        execute "colorscheme " . g:grey_colorschemes[0]
    endif
endfunction

" Toggle background to gray (or back)
function! GreyBackground()
  if g:colors_name == g:grey_colorschemes[0]
    if g:grey_background == 0
      let l:colorcode=253
      let g:grey_background=1
    else
      let l:colorcode=231
      let g:grey_background=0
    endif
  elseif g:colors_name == g:grey_colorschemes[1]
    if g:grey_background == 0
      let l:colorcode=239
      let g:grey_background=1
    else
      let l:colorcode=232
      let g:grey_background=0
    endif
  endif

  execute "normal! :hi Normal ctermbg=" . colorcode . "\<cr>"
endfunction
