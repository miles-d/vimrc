set nocompatible
set background=dark
colorscheme molokai

let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

nnoremap <leader>t :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

augroup GVIMSCRIPT
    autocmd!
    autocmd BufWritePost ~/.gvimrc source % | redraw | echo "Reloaded gvimrc!"
augroup END

set guicursor=a:blinkon0
