autocmd!

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
set hidden
set history=500
syntax enable
filetype plugin indent on
set ignorecase
set smartcase
set hlsearch
set magic
set showmatch
set wildmode=longest,list
set nocursorline
set expandtab
set switchbuf=useopen
set winwidth=79
set nowrap
set textwidth=0
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set nonumber
set incsearch
set mouse=a
set showcmd
set modeline
set modelines=2
set encoding=utf8
set fileformats=unix,dos,mac
set nobackup
set nowritebackup
set noswapfile
set nojoinspaces
set autowrite
set mouse=nvi
set nolist
set splitbelow
set splitright
set colorcolumn=+1
set autowrite
set ttimeout
set timeoutlen=300
set ttimeoutlen=300
set wildmenu
set sidescrolloff=5
set display+=lastline
set shell=/bin/bash
set autoread
set tabpagemax=50
set completeopt=menu
set listchars=tab:>-,nbsp:_,trail:.
set nolist
set foldmethod=manual
set foldlevel=99
set sessionoptions-=options
set formatoptions+=j " Delete comment character when joining commented lines
setglobal tags-=./tags tags-=./tags; tags^=./tags;
" don't clear screen on suspend
set t_ti= t_te=
let g:netrw_altfile = 1

set omnifunc=syntaxcomplete#Complete
let g:omni_sql_no_default_maps = 1
set wildignore+=tags,.*.un~,*.pyc
let g:clipbrdDefaultReg = '*'
set whichwrap+=<,>,h,l
set smartindent
" When intending, round to full tabs
set shiftround
" Always show status line
set laststatus=2
set guioptions-=e
set showtabline=1
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

inoremap <C-U> <C-G>u<C-U>

augroup last_edit_point
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
augroup END

" Remember info about open buffers on close
set viminfo^=%

set t_Co=256
set term=screen-256color
set background=dark

set t_ZH=[3m
set t_ZR=[23m

" keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv


" MAPPINGS
" I use dvorak, so ergonomics of some mappings might be weird for you

" MOVEMENT
map j gj
map k gk
nnoremap H ^
nnoremap L $

let mapleader = ","
let maplocalleader = "\<Space>" 
" 0 goes to first character on the line, not whitespace
map 0 ^

" Ctrl-space toggles between insert and normal modes
imap <C-@> <ESC>:w<CR>
nmap <C-@> i
inoremap <c-c> <ESC>

" Write
nmap <localleader>j :w<cr>

nmap <c-n> :
nnoremap ,, :!

nmap <CR> :noh<CR>

" Move between splits
map <C-l> <C-W>l
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k

" Open last
nmap <leader>l <c-^>
" Open files in directory of current file
cnoremap <expr> %% expand('%:h').'/'
nmap <leader>e :edit %%
" Insert a ` => `
inoremap <c-l> <space>=><space>
inoremap uh $

" Open vimrc
nnoremap <leader>hv :e $MYVIMRC<cr>
" Reload vimrc
nnoremap <leader>hs :source $MYVIMRC<cr>

" Resize
nmap <c-w><c-l> :vertical resize +7<cr>
nmap <c-w><c-h> :vertical resize -7<cr>

" Find & replace current word in the file
nnoremap <localleader>ss :%s/\<<C-r><C-w>\>/
" Insert a `;` at the end of the line
nnoremap <localleader>; A;<Esc>
" Insert a `,` at the end of the line
nnoremap <localleader>, A,<Esc>

" Map a mapping
nmap <leader>hr :map ,r :w\\|!


" PLUGINS

let g:sexp_enable_insert_mode_mappings = 0


" Digraphs
inoremap <expr>  <C-K>   BDG_GetDigraph()


" Dispatch
let g:dispatch_tmux_height = 5


" Projectionist
nnoremap <localleader>eh :A<cr>
nnoremap <localleader>d :w!\|:Dispatch<cr>
nnoremap dc :Console<CR>
" file-projections
nnoremap <leader>fp :e .projections.json<cr>

let g:projectionist_heuristics = {
    \ "*": {
    \   "*.js": {"console": "node"},
    \   "*.rb": {"dispatch": "ruby {file}", "console": "irb"},
    \   "*.py": {"console": "python3"},
    \   "test_*.py": {"type": "test", "template": ["import unittest", "", "class {capitalize}Test(unittest.TestCase):"]}
    \ }}


" EMMET
" only enable for insert mode
let g:user_emmet_mode = 'i'

" FLAGSHIP
let g:tabprefix = '%{flagship#id()}'
let g:tablabel =
      \ "%N%{flagship#tabmodified()} %{flagship#tabcwds('shorten',',')}"

" FUGITIVE
" Set current directory to git root of current file
nnoremap <localleader><cr> :Glcd<cr>
nnoremap <localleader>hc :Gstatus<CR>
nnoremap <localleader>hb :Gblame<CR>
nnoremap <localleader>hs :Git st<CR>
nnoremap <localleader>hw :Gwrite<CR>
nnoremap <localleader>hd :Gdiff<CR>
nnoremap <localleader>hh :Ggrep 
" Git grep current word
nnoremap <leader>p "zyiw :execute "Ggrep! " . shellescape('\b' . expand("<cword>") . '\b') . " -- ':!*.min.js' ."<cr>
" Replace all found occurrences; intended to be run after the above.
" Uses register z
nnoremap <leader>gr :cdo s/\<<c-r>z\>//<left>
nnoremap <leader>ga :Git add -p %<cr>

autocmd BufReadPost fugitive://* set bufhidden=delete


" TOGGLELIST
let g:toggle_list_no_mappings = 1
let g:toggle_list_copen_command="botright copen"
nmap <script> <silent> <localleader>q :call ToggleQuickfixList()<CR>


" VIMWIKI
nmap <leader>wn :e ~/doc/Notes.md<CR>
let g:vimwiki_list = [{'path': '~/doc/wiki/',
            \ 'syntax': 'default', 'ext': '.vimwiki'},
            \ {'path': '~/doc/prv/', 'ext': '.vimwiki'}]

augroup VIMWIKI
  autocmd!
  autocmd FileType vimwiki setlocal textwidth=80
  autocmd FileType vimwiki setlocal shiftwidth=2 tabstop=2
  autocmd FileType vimwiki setlocal keywordprg=dict
augroup END


" MISC


" Inline variable
function! Inline_variable()
    normal H*``2w"zDnde"zP``dd
endfunction

function! Inline_variable_when_semicolon()
    normal H*``2w"zdt;nde"zP``dd
endfunction

nmap <space>i :call Inline_variable()<CR>
nmap <space>ri :call Inline_variable_when_semicolon()<CR>


" Shebang - not in FileType autocmd,
" because often it's the first thing in a new file
inoremap sh<c-i> #!/usr/bin/env<space>


augroup COMMON_PROGRAMMING
    autocmd!
    autocmd FileType python,php,javascript,java,ruby iabbrev <buffer> ret return
    autocmd FileType php,java iabbrev <buffer> pv private
    autocmd FileType php,java iabbrev <buffer> pub public
    autocmd FileType php,java iabbrev <buffer> pum public function
    autocmd FileType php,java iabbrev <buffer> pvm private function
    autocmd FileType php,java iabbrev <buffer> prot protected
    autocmd FileType php,java iabbrev <buffer> fun function
    autocmd FileType php iabbrev <buffer> stat static function
    autocmd FileType java iabbrev <buffer> stat static
    autocmd FileType php nmap <buffer> <space>/ /function<space>
augroup END

augroup PYTHON
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>; A:<Esc>
    " search for function definitions
    autocmd FileType python nmap <buffer> <space>f :vimgrep 'def ' %<CR>:cw<CR>
    autocmd FileType python imap <buffer> gj self
    autocmd FileType python setlocal keywordprg=pydoc3
    autocmd FileType python nnoremap <buffer> <leader>r :!python3 %<cr>

    " setUp
    autocmd FileType python imap <buffer> sup<c-i> def setUp(self):<cr>
    " print()
    autocmd FileType python imap <buffer> h<c-i> print()<esc>i
    " unittest assertions
    autocmd FileType python imap <buffer> ase<c-i> self.assertEqual(X)<esc>FXs
    autocmd FileType python imap <buffer> ast<c-i> self.assertTrue(X)<esc>FXs
    autocmd FileType python imap <buffer> asf<c-i> self.assertFalse(X)<esc>FXs
    " skip test
    autocmd FileType python imap <buffer> x<c-i> @unittest.skip('X')<esc>FXs
augroup END

augroup RUBY
  autocmd!
  autocmd FileType ruby imap <buffer> uh @
augroup END

augroup PHP
    autocmd!
    " imaps
    " h log
    autocmd FileType php imap <buffer> h<c-i> dd(<esc>A;<left><left>
    " me log method
    autocmd FileType php imap <buffer> me<c-i> dd<c-v>(__METHOD__);<esc>
    " cst constructor
    autocmd FileType php imap <buffer> cst<c-i> public function __construct(
    " phpunit assertions
    autocmd FileType php imap <buffer> ast<c-i> $this->assertTrue(X);<esc>FXs
    autocmd FileType php imap <buffer> as<c-i> $this->assertSame(X);<esc>FXs
    autocmd FileType php imap <buffer> t<c-i> public function testX() {<cr>}<c-i><esc>kfXs
    " x - mark test skipped
    autocmd FileType php imap <buffer> x<c-i> $this->markTestSkipped();<esc>
    " setUp
    autocmd FileType php imap <buffer> sup<c-i> public function setUp() {<cr>

    autocmd FileType php setlocal keywordprg=pman
    autocmd FileType php setlocal commentstring=//\ %s
    autocmd FileType php setlocal iskeyword+=$
    autocmd FileType php nmap <buffer> <space>i :call Inline_variable_when_semicolon()<CR>
    autocmd FileType php nmap <buffer> <space>f :vimgrep 'p\w\+ function' %<CR>:cw<CR>
    autocmd FileType php imap <buffer> tj ->
    autocmd FileType php imap <buffer> gj $this->
    " insert current base filename - cl - think class
    autocmd FileType php imap <buffer> cl<c-i> <c-r>=expand('%:t:r')<cr>
    " phpcbf - think standard-fix
    autocmd FileType php nmap <localleader>sf :!phpcbf --standard=PSR2 %<cr>
    " array to object $foo['bar'] => $foo->bar
    autocmd FileType php nmap <buffer> <localleader>wo mzwwds]ds'i-><ESC>`z
    " object to array $foo->bar   => $foo['bar']
    autocmd FileType php nmap <buffer> <localleader>wa mzwwysw]lysw'hhxhx<ESC>`z
    " split params - r-split
    autocmd FileType php nmap <buffer> <localleader>rs dibi<cr><esc>p:s/, /,\r/g<CR>j=ibkf(
    " array(...) to [...] - r-array
    autocmd FileType php nmap <buffer> <localleader>ra diwcs)]
augroup END

augroup JAVASCRIPT
    autocmd!
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
    autocmd FileType javascript imap <buffer> gj this.
    autocmd FileType javascript imap <buffer> tj const 
    " h - console.log
    autocmd FileType javascript imap <buffer> h<c-i> console.log(X);<esc>FXs
    " fl - console.log current file
    autocmd FileType javascript imap <buffer> fl<c-i> console.log('<c-r>=expand("%:t")<cr>');<esc>
augroup END

augroup COFFEESCRIPT
    autocmd!
    autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
augroup END

augroup VIMSCRIPT
    autocmd!
    " reload color when saving color file
    autocmd BufWritePost ~/.vim/colors/*.vim source %
augroup END

augroup CLOJURE
    autocmd!
    autocmd FileType clojure nmap <localleader>m :Eval<cr>
    autocmd FileType clojure setlocal sw=2 ts=2
augroup END

augroup CSS
    autocmd!
    autocmd FileType css setlocal shiftwidth=2 tabstop=2
    autocmd FileType css imap <buffer> ,, !important
    autocmd FileType css nmap <buffer> ,, i !important<ESC>
augroup END

augroup FILETYPES
  autocmd!
  au BufNewFile,BufRead *.html setlocal filetype=htmldjango
  autocmd BufNewFile,BufRead *.md setlocal ft=markdown
augroup END



" SELECTA
augroup selecta_php_project
    autocmd!
    " j - javascript
    nnoremap <localleader>nj :call SelectaCommand("git ls-files \| grep \.js$ \| grep -v 'test\/unit'", "", ":e")<cr>
    " m - model
    nnoremap <localleader>nm :call SelectaCommand("git ls-files \| grep 'Model'", "", ":e")<cr>
    " c - controller
    nnoremap <localleader>nc :call SelectaCommand("git ls-files \| grep 'Controller'", "", ":e")<cr>
    " f - config (zend)
    nnoremap <localleader>nf :call SelectaCommand("git ls-files \| grep 'src\/module.*\/module.config'", "", ":e")<cr>
    " h - html
    nnoremap <localleader>nh :call SelectaCommand("git ls-files \| grep 'src\/.*html'", "", ":e")<cr>
    " nnoremap <localleader>no :call SelectaCommand("git ls-files \| grep 'src\/module.*\.Form.php'", "", ":e")<cr>
    " t - test
    nnoremap <localleader>nt :call SelectaCommand("git ls-files \| grep '[Tt]est.*'", "", ":e")<cr>
    " s - css
    nnoremap <localleader>ns :call SelectaCommand("git ls-files \| grep '.*css'", "", ":e")<cr>
    " p - php
    nnoremap <localleader>np :call SelectaCommand("git ls-files \| grep '.*php'", "", ":e")<cr>
    " d - dir
    " with find
    " nnoremap <localleader>nd :call SelectaCommand("find . -path ./.git -prune -o -type d", "", ":e")<cr>
    " with git
    nnoremap <localleader>nd :call SelectaCommand("git ls-files \| sed 's:[^/]*$::' \| sed '/^$/d' \| sort -u", "", ":e")<cr>
augroup END

" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta --height 25" . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
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
nnoremap <localleader>si :call SelectaIdentifier()<cr>


function! SelectaBuffer()
  let bufnrs = filter(range(1, bufnr("$")), 'buflisted(v:val)')
  let buffers = map(bufnrs, 'bufname(v:val)')
  call SelectaCommand('echo "' . join(buffers, "\n") . '"', "", ":b")
endfunction
" Fuzzy select a buffer. Open the selected buffer with :b.
" nnoremap <leader>b :call SelectaBuffer()<cr>
nnoremap <leader>b :call SelectaBuffer()<cr>

function! SelectaArgs()
  let args = argv()
  call SelectaCommand('echo "' . join(args, "\n") . '"', "", ":b")
endfunction
nnoremap <localleader>ch :call SelectaArgs()<CR>
nnoremap <localleader>ca :arga %<CR>
nnoremap <localleader>cd :argd %<CR>


" select and show git revision
nnoremap <localleader>ng :call SelectaCommand("git log --oneline --decorate \| less -R", " \| cut -d ' ' -f 1", ":Gedit")<cr>
nnoremap <localleader>t :call SelectaCommand("find . -path './.git' -prune -o -type f -name '*'", "", ":e")<cr>
nnoremap <leader>t :call SelectaCommand("git ls-files", "", ":e")<cr>


function! SwitchProject()
  call SelectaCommand('ls -d ~/* ~/proj/* ~/doc/*', "", ":e")
  normal c
endfunction
nnoremap <localleader>p :call SwitchProject()<cr>

" COLORS
" Figure out highlight group
nnoremap <leader>nh :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" Toggle between my two colorschemes
function! SwitchColor()
    if g:colors_name == 'minilight'
        colorscheme minidark
    elseif g:colors_name == 'minidark'
        colorscheme minilight
    endif
endfunction

" Toggle background to gray (or back)
function! GreyBackground()
  if g:colors_name == 'minilight'
    if g:grey_background == 0
      let l:colorcode=253
      let g:grey_background=1
    else
      let l:colorcode=231
      let g:grey_background=0
    endif
  elseif g:colors_name == 'minidark'
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

let g:grey_background = 0
nnoremap <leader>hg :call GreyBackground()<CR>
nmap coe :call SwitchColor()<cr>

set background=dark
colorscheme minidark
let g:mdr_color = 'minidark'


" HACKS

" Turn syntax off (or on) - e.g., when working on huge file
function! ToggleSyntax()
  if exists("g:syntax_on")
    syntax off
  else
    syntax enable
  endif
endfunction
nmap com :call ToggleSyntax()<CR>

" Use `trans' command to translate current word
nnoremap <leader>od viwy:!trans de:pl "<CR>
nnoremap <leader>oe viwy:!trans en:pl "<CR>
