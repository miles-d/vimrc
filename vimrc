autocmd!

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
set winwidth=80
set wrap
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
set listchars=tab:>-,nbsp:_,trail:.,space:·
set nolist
set foldmethod=manual
set foldlevel=99
set sessionoptions-=options
set formatoptions+=j " Delete comment character when joining commented lines
set cryptmethod=blowfish2
" don't clear screen on suspend
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

" do not clear screen on suspend (C-z)
" for some reason should not be earlier in vimrc...
set t_ti= t_te=

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
nnoremap <Down> <c-f>
nnoremap <Up> <c-b>

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

nnoremap <CR> :noh<CR>

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

if !has('gui_running')
  let g:loaded_ctrlp = 1
endif

command! Piggie :Piggieback (figwheel-sidecar.repl-api/repl-env)

let g:sexp_enable_insert_mode_mappings = 1

" Dispatch
let g:dispatch_tmux_height = 5


" Projectionist
nnoremap <localleader>eh :A<cr>
nnoremap <localleader>d :w!\|:silent Dispatch<cr>
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
" Git grep current word
nnoremap <leader>p "zyiw :execute "Ggrep! " . shellescape('\b' . expand("<cword>") . '\b')<cr>
" Replace all found occurrences; intended to be run after the above.
" Uses register z
nnoremap <leader>gr :cdo s/\<<c-r>z\>//<left>
nnoremap <leader>ga :Git add -p %<cr>

autocmd BufReadPost fugitive://* set bufhidden=delete


" TOGGLELIST
let g:toggle_list_no_mappings = 1
let g:toggle_list_copen_command="botright copen"
nnoremap <script> <silent> <localleader>q :call ToggleQuickfixList()<CR>


" VIMWIKI
nmap <leader>wn :e ~/doc/Notes.md<CR>
let g:vimwiki_list = [
      \ {'path': '~/doc/wiki/', 'syntax': 'default', 'ext': '.vimwiki', 'auto_toc': 1},
      \ {'path': '~/doc/kwiki/', 'syntax': 'default', 'ext': '.vimwiki'}]

let g:vimwiki_folding = 'syntax'


augroup VIMWIKI
  autocmd!
  autocmd FileType vimwiki setlocal textwidth=100
  autocmd FileType vimwiki,markdown setlocal keywordprg=dict
augroup END


" MISC


" Inline variable
function! Inline_variable()
    normal! H*``2w"zDnde"zP``dd
endfunction

function! Inline_variable_when_semicolon()
    normal! H*``2w"zdt;nde"zP``dd
endfunction

nmap <space>i :call Inline_variable()<CR>
nmap <space>ri :call Inline_variable_when_semicolon()<CR>


" Shebang - not in FileType autocmd,
" because often it's the first thing in a new file
inoremap sh<c-i> #!/usr/bin/env<space>


augroup COMMON_PROGRAMMING
    autocmd!
    autocmd FileType coffee,javascript,python,vimwiki,css,ruby setlocal shiftwidth=2 tabstop=2
    autocmd FileType python,php,javascript,java,ruby,c iabbrev <buffer> ret return
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
    autocmd FileType python nnoremap ,cc "zyiwoprint('<c-r>z', <c-r>z)<esc>
    " search for function definitions
    autocmd FileType python nmap <buffer> <space>f :vimgrep 'def ' %<CR>:cw<CR>
    autocmd FileType python imap <buffer> gj self
    autocmd FileType python setlocal keywordprg=pydoc3

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
    autocmd FileType python inoremap <buffer> <c-r>g <esc>:call SetterAssignmentPython()<cr>
augroup END

augroup RUBY
  autocmd!
  autocmd FileType ruby imap <buffer> uh @
augroup END

augroup BASH
  autocmd!
  autocmd FileType sh setlocal sw=4 ts=4
augroup END

augroup PHP
    autocmd!
    autocmd FileType php setlocal sw=4 ts=4
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
    autocmd FileType php inoremap <buffer> <c-r>g <esc>:call SetterAssignmentPhp()<cr>
augroup END


function! SetterAssignmentJava()
    let l:var_name = input('Variable name: ')
    put ='this.' . var_name . ' = ' . var_name . ';'
    normal! ==kdd
endfunction

function! SetterAssignmentPython()
    let l:var_name = input('Variable name: ')
    put ='self.' . var_name . ' = ' . var_name
    normal! ==kdd
endfunction

function! SetterAssignmentPhp()
    let l:var_name = input('Variable name: ')
    put ='$this->' . var_name . ' = $' . var_name . ';'
    normal! ==kdd
endfunction

augroup JAVA
    autocmd!
    autocmd FileType java nmap <leader>jh :JavaImport<cr>
    autocmd FileType java setlocal tags+=~/.javatags
    autocmd FileType java inoremap h<c-i> System.out.println();<LEFT><LEFT>
    autocmd FileType java inoremap <buffer> <c-r>g <esc>:call SetterAssignmentJava()<cr>
augroup END

" Insert method binding on next line
function! JsBind()
  call inputsave()
  let name = input('Method name: ')
  call inputrestore()
  let line_text = 'this.' . name . ' = this.' . name . '.bind(this)'
  call append('.', line_text)
  normal! j==^
endfunction

" Find end of constructor, and insert binding for method under cursor
function! JsBindInConstructor()
  let name = expand("<cword>")
  keepjumps normal! gg
  " go to the end of the constructor
  keepjumps normal! /\<constructor\>]Mk
  let line_text = 'this.' . name . ' = this.' . name . '.bind(this)'
  call append('.', line_text)
  normal! j==^
endfunction

augroup JAVASCRIPT
    autocmd!
    autocmd FileType javascript imap <buffer> gj this.
    autocmd FileType javascript imap <buffer> tj const 
    autocmd FileType javascript nnoremap <buffer> <leader>jb :call JsBind()<cr>
    autocmd FileType javascript nnoremap <buffer> <leader>jib :call JsBindInConstructor()<cr>
    " h - console.log
    autocmd FileType javascript imap <buffer> h<c-i> console.log(X)<esc>FXs
    " fl - console.log current file
    autocmd FileType javascript imap <buffer> fl<c-i> console.log('<c-r>=expand("%:t")<cr>')<esc>
    autocmd FileType javascript nnoremap ,cc "zyiwoconsole.log('<c-r>z', <c-r>z)<esc>
augroup END

augroup VIMSCRIPT
    autocmd!
    " reload color when saving color file
    autocmd BufWritePost ~/proj/vimrc/colors/*.vim source %
    autocmd BufWritePost ~/.vimrc source % | redraw | echo "Reloaded vimrc!"
    autocmd FileType vim setlocal sw=2 ts=2
augroup END

augroup CLOJURE
    autocmd!
    autocmd FileType clojure nmap <localleader>m :Eval<cr>
    autocmd FileType clojure setlocal sw=2 ts=2
augroup END

augroup CSS
    autocmd!
    autocmd FileType css imap <buffer> ,, !important
    autocmd FileType css nmap <buffer> ,, i !important<ESC>
augroup END

augroup GIT
  autocmd!
  autocmd FileType gitcommit nnoremap <buffer> ,, :read !git symbolic-ref HEAD \| xargs basename \| sed -E 's/[^0-9]+$//'<cr>kddA 
augroup END

augroup OTHER
  autocmd!
  autocmd BufNewFile,BufRead *.html setlocal filetype=htmldjango
  autocmd BufNewFile,BufRead *.md setlocal ft=markdown
  autocmd FileType remind setlocal commentstring=#\ %s
  autocmd FileType crontab setlocal commentstring=#\ %s
  autocmd FileType yaml setlocal foldmethod=syntax
augroup END

" SELECTA
nnoremap <localleader>nm :call SelectaGitFile("Model", "")<cr>
" nnoremap <localleader>nc :call SelectaGitFile("Controller", "")<cr>
nnoremap <localleader>nt :call SelectaGitFile("[Tt]est", "")<cr>
nnoremap <localleader>nj :call SelectaGitFile("\.js$", "test\/unit")<cr>
" nnoremap <localleader>ns :call SelectaGitFile(".*\.css", "")<cr>
nnoremap <localleader>np :call SelectaGitFile(".*\.php", "")<cr>
nnoremap <localleader>nd :call SelectaCommand("git ls-files \| sed 's:[^/]*$::' \| sed '/^$/d' \| sort -u", "", ":e")<cr>
nnoremap <localleader>si :call SelectaIdentifier()<cr>

" SELECTA react+redux project
nnoremap <localleader>ns :call SelectaGitFile("selectors", "")<cr>
nnoremap <localleader>na :call SelectaGitFile("actions", "")<cr>
nnoremap <localleader>nc :call SelectaGitFile("components", "")<cr>
nnoremap <localleader>nr :call SelectaGitFile("reducers", "")<cr>

nnoremap <leader>b :call SelectaBuffer()<cr>
nnoremap <localleader>ch :call SelectaArgs()<CR>
nnoremap <localleader>ca :arga %<CR>
nnoremap <localleader>cd :argd %<CR>


" select and show git revision
nnoremap <localleader>ng :call SelectaCommand("git log --oneline --decorate \| less -R", " \| cut -d ' ' -f 1", ":Gedit")<cr>
nnoremap <localleader>t :call SelectaCommand("find . -path './.git' -prune -o -type f -name '*'", "", ":e")<cr>
nnoremap <leader>t :call SelectaCommand("git ls-files", "", ":e")<cr>
" files changed in current pull request
nnoremap <localleader>ne :call SelectaCommand('git di $(git merge-base master HEAD) --name-only', "", ":e")<cr>

function! SwitchProject()
  call SelectaCommand('find $(echo $PROJECT_DIRS | tr ":" " ") -maxdepth 1 -type d', ' | while read f; do echo $f"/.gitignore"; done', ":e")
  execute "lcd %:p:h"
  normal c
endfunction
nnoremap <localleader>p :call SwitchProject()<cr>

let g:ale_enabled = 0
nnoremap coa :ALEToggle<cr>
let g:ale_linters = {
\   'javascript': ['jslint'],
\}

nnoremap <leader>hg :call GreyBackground()<CR>
nmap coe :call SwitchColor()<cr>
set background=dark

if get(g:, 'colors_name') == 0
  colorscheme minidark
else
  colorscheme minilight
endif
let g:grey_background = 0
let g:grey_colorschemes = ['minilight', 'minidark']
let g:selecta_height = 25

nnoremap <leader>od :call Trans("de", "pl", expand("<cword>"))<cr>
nnoremap <leader>oe :call Trans("en", "pl", expand("<cword>"))<cr>
vnoremap <leader>oe :call Trans("en", "pl", expand("'<,'>"))<cr>


" Turn syntax off (or on) - e.g., when working on huge file
function! ToggleSyntax()
  if exists("g:syntax_on")
    syntax off
  else
    syntax enable
  endif
endfunction
nmap com :call ToggleSyntax()<CR>

" copy current file name
nnoremap <leader>nn :silent !pbcopy <<<%<cr>
" open ranger file manager in the directory of current file
command! Ranger :!(cd %:h ; ranger)

" insert current date in ISO format
iabbrev <silent> dst <C-R>=strftime("%Y-%m-%d")<cr>
iabbrev <silent> ddst <C-R>=strftime("%Y-%m-%dT%H:%M:%S.000Z")<cr>
" insert current file name without extension
iabbrev <silent> crr <C-R>=expand('%:t:r')<cr>

function! EditCurrentColorScheme()
  let colorscheme_path = '~/.vim/colors/' . get(g:, 'colors_name') . '.vim'
  execute "edit " . colorscheme_path
endfunction

command! Ecolor :call EditCurrentColorScheme()
