set background=light
hi clear

let colors_name = "minilight"

" General colors
hi Normal  ctermfg=232 ctermbg=231 cterm=NONE
hi NonText  ctermfg=NONE ctermbg=NONE cterm=NONE

hi Cursor  ctermfg=black ctermbg=NONE cterm=NONE
hi LineNr  ctermfg=darkgray ctermbg=NONE cterm=NONE

hi VertSplit ctermfg=NONE ctermbg=NONE cterm=REVERSE
hi StatusLine  ctermfg=255 ctermbg=239 cterm=NONE
hi StatusLineNC  ctermfg=blue ctermbg=darkgray cterm=NONE 
hi Underlined ctermfg=blue ctermbg=darkgray cterm=NONE 

hi Folded ctermfg=248 ctermbg=NONE cterm=NONE
hi Title  ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLine ctermfg=NONE ctermbg=NONE cterm=REVERSE
hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=BOLD

hi SpecialKey ctermfg=246 ctermbg=NONE cterm=NONE

hi WildMenu  guibg=NONE ctermfg=black ctermbg=NONE cterm=NONE
hi PmenuSbar  ctermfg=black ctermbg=white cterm=NONE
"hi Ignore   ctermfg=NONE ctermbg=NONE cterm=NONE

hi Error ctermfg=white ctermbg=red cterm=NONE " undercurl color
hi ErrorMsg ctermfg=white ctermbg=red cterm=NONE
hi WarningMsg ctermfg=white ctermbg=red cterm=NONE
hi LongLineWarning  ctermfg=NONE ctermbg=NONE cterm=underline

" Message displayed in lower left, such as --INSERT--
hi ModeMsg  ctermfg=NONE ctermbg=NONE cterm=REVERSE

hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=56 ctermbg=NONE cterm=BOLD
hi Search  ctermfg=NONE ctermbg=159 cterm=UNDERLINE
hi PmenuThumb    ctermfg=16    ctermbg=231
hi Pmenu ctermfg=NONE ctermbg=251 cterm=NONE
hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=REVERSE

" Syntax highlighting
hi String ctermfg=19 ctermbg=NONE cterm=NONE
hi Number ctermfg=NONE ctermbg=NONE cterm=NONE
hi cCharacter ctermfg=163 ctermbg=NONE cterm=NONE
hi cSpecial ctermfg=165 ctermbg=NONE cterm=BOLD

hi Keyword ctermfg=NONE ctermbg=NONE cterm=NONE
hi Conditional ctermfg=NONE ctermbg=NONE cterm=BOLD

hi Todo ctermfg=red ctermbg=NONE cterm=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE

" custom Identifier
hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
" Type 'public', 'class'
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
" Statement - if else return
hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
" hi PreProc ctermfg=NONE cterm=NONE
hi! link PreProc Statement

hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
hi Delimiter ctermfg=NONE ctermbg=NONE cterm=NONE
hi Operator ctermfg=NONE ctermbg=NONE cterm=NONE

hi Comment ctermfg=17 cterm=BOLD

hi StatusLineNC  ctermfg=NONE ctermbg=NONE cterm=REVERSE " command-t top bar
hi VertSplit ctermbg=NONE ctermfg=NONE cterm=REVERSE
hi LineNr ctermfg=darkgray
hi CursorLine ctermfg=NONE ctermbg=253 cterm=NONE
hi Visual ctermfg=NONE ctermbg=254 cterm=NONE

hi Error ctermfg=NONE ctermbg=red cterm=NONE
hi ErrorMsg ctermfg=NONE ctermbg=red cterm=NONE
hi WarningMsg ctermfg=NONE ctermbg=red cterm=NONE
hi SpellBad ctermfg=203 ctermbg=NONE cterm=NONE

hi phpFunctions ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpFunction ctermfg=NONE ctermbg=NONE cterm=BOLD
hi phpDefine ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpStatement ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpInclude ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpType ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpRegion ctermfg=NONE ctermbg=NONE cterm=BOLD
hi phpIdentifier ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpMethodsVar ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpParent ctermfg=NONE ctermbg=NONE cterm=NONE
hi! link phpVarSelector phpIdentifier
hi phpSpecialFunction ctermfg=NONE cterm=NONE
hi phpException ctermfg=NONE cterm=NONE

hi jsFunctionKey ctermfg=NONE ctermbg=NONE cterm=BOLD
hi Function ctermfg=53 ctermbg=NONE cterm=BOLD

hi DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=NONE
hi DiffChange term=reverse cterm=bold ctermbg=lightblue ctermfg=NONE
hi DiffText term=reverse cterm=bold ctermbg=lightgray ctermfg=NONE
hi DiffDelete term=reverse cterm=bold ctermbg=lightred ctermfg=NONE

hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=REVERSE

hi htmlLink ctermfg=20 ctermbg=NONE cterm=UNDERLINE
hi xmlEndTag ctermfg=53 ctermbg=NONE cterm=NONE

hi Directory ctermfg=88 ctermbg=NONE cterm=BOLD
" directory color in Netrw listing
hi netrwDir ctermfg=57 ctermbg=NONE cterm=BOLD
hi NERDTreeUp ctermfg=NONE ctermbg=NONE cterm=NONE
hi NERDTreeDir ctermfg=NONE ctermbg=NONE cterm=NONE
" Conceal - used by pandoc
hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question ctermfg=NONE ctermbg=NONE cterm=NONE
hi qfFileName ctermfg=NONE cterm=NONE 
" Vertical line at the text width limit
hi colorColumn ctermfg=NONE ctermbg=NONE cterm=NONE

hi vimWikiHeader1 ctermfg=238 ctermbg=NONE cterm=BOLD
hi vimWikiHeader2 ctermfg=238 ctermbg=NONE cterm=BOLD
hi vimWikiHeader3 ctermfg=238 ctermbg=NONE cterm=BOLD
hi vimWikiHeaderChar ctermfg=238 ctermbg=NONE cterm=BOLD
hi vimWikiBold ctermfg=NONE ctermbg=NONE cterm=BOLD
hi vimWikiList ctermfg=NONE ctermbg=NONE cterm=NONE
hi VimwikiLink cterm=bold,underline ctermfg=69 ctermbg=NONE
hi VimwikiListTodo cterm=BOLD ctermfg=NONE ctermbg=NONE
hi VimwikiPre cterm=NONE ctermfg=93 ctermbg=NONE
hi link VimwikiCode VimwikiPre

" hi rubyRegexp          ctermfg=NONE ctermbg=NONE cterm=NONE
" hi rubyRegexpDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE
hi ColorColumn ctermbg=253
hi rubyControl ctermfg=NONE ctermbg=NONE cterm=BOLD
hi rubyModule ctermfg=NONE ctermbg=NONE cterm=BOLD

hi SpecialText ctermfg=129
hi NonText ctermfg=129
hi ExtraWhitespace ctermfg=129
hi link NonText SpecialText
hi link ExtraWhitespace SpecialText
hi snipSnippetFooterKeyword ctermfg=22 ctermbg=NONE cterm=NONE
hi link snipSnippetHeaderKeyword snipSnippetFooterKeyword
hi snipSnippetTrigger ctermfg=17 ctermbg=NONE cterm=NONE

hi htmlError ctermfg=196 ctermbg=NONE cterm=UNDERLINE

hi clojureParen ctermfg=NONE ctermbg=NONE cterm=NONE
hi clojureKeyword ctermfg=239 ctermbg=NONE cterm=NONE
hi clojureDefine ctermfg=NONE ctermbg=NONE cterm=BOLD

highlight TestOk    ctermfg=28
highlight TestError ctermfg=160

hi diffRemoved ctermfg=196 ctermbg=NONE cterm=NONE
hi diffAdded ctermfg=28 ctermbg=NONE cterm=NONE

hi DjangoTagBlock ctermfg=198 cterm=BOLD
hi DjangoStatement ctermfg=198 cterm=BOLD
hi link DjangoVarBlock DjangoTagblock

hi link PythonFunction Function
hi sqlKeyword ctermfg=NONE ctermbg=NONE cterm=BOLD
hi sqlStatement ctermfg=NONE ctermbg=NONE cterm=BOLD

hi javaAnnotation ctermfg=NONE ctermbg=NONE cterm=BOLD
hi javaStatement ctermfg=NONE ctermbg=NONE cterm=BOLD
