set background=dark
hi clear

let colors_name = "green"

hi Normal  ctermfg=40 ctermbg=232 cterm=NONE guibg=yellow
hi NonText  ctermfg=245 ctermbg=NONE cterm=NONE

hi Cursor  ctermfg=black ctermbg=NONE cterm=NONE
hi LineNr  ctermfg=darkgray ctermbg=NONE cterm=NONE

hi VertSplit ctermfg=darkgray ctermbg=darkgray cterm=NONE

hi Folded ctermfg=243 ctermbg=NONE cterm=NONE
hi Title  ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLine ctermfg=black ctermbg=gray

hi SpecialKey ctermfg=247 ctermbg=NONE cterm=NONE

hi WildMenu  guibg=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSbar  ctermfg=black ctermbg=white cterm=NONE
hi Ignore   ctermfg=NONE ctermbg=NONE cterm=NONE

hi Error ctermfg=232 ctermbg=red cterm=NONE
hi helpError ctermfg=232 ctermbg=red cterm=NONE
hi ErrorMsg ctermfg=232 ctermbg=red cterm=NONE
hi WarningMsg ctermfg=red ctermbg=232 cterm=NONE
hi LongLineWarning  ctermfg=NONE ctermbg=NONE cterm=underline

hi ModeMsg  ctermfg=white ctermbg=black cterm=NONE

hi CursorLine ctermfg=NONE ctermbg=239 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=164 ctermbg=NONE cterm=BOLD
hi Pmenu ctermfg=232 ctermbg=250 cterm=NONE
hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=REVERSE
hi Search  ctermfg=157 ctermbg=NONE cterm=UNDERLINE,BOLD

hi String ctermfg=159 ctermbg=NONE cterm=NONE
hi Number ctermfg=NONE ctermbg=NONE cterm=NONE
hi cCharacter ctermfg=189 ctermbg=NONE cterm=NONE
hi cSpecial ctermfg=NONE ctermbg=NONE cterm=BOLD

hi Keyword ctermfg=NONE ctermbg=NONE cterm=NONE
hi Conditional ctermfg=NONE ctermbg=NONE cterm=BOLD

hi Todo ctermfg=203 ctermbg=NONE cterm=BOLD
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE

hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
hi PreProc ctermfg=NONE cterm=NONE
hi! link PreProc Statement

hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
hi Delimiter ctermfg=NONE ctermbg=NONE cterm=NONE
hi Operator ctermfg=NONE ctermbg=NONE cterm=NONE

hi Comment ctermfg=252 ctermbg=NONE cterm=NONE

hi StatusLine  ctermfg=black ctermbg=green cterm=NONE
hi StatusLineNC ctermfg=green ctermbg=22 cterm=NONE
hi VertSplit ctermbg=245 ctermfg=NONE cterm=NONE
hi LineNr ctermfg=246
hi Visual ctermfg=NONE ctermbg=236 cterm=NONE

hi Error ctermfg=NONE ctermbg=red cterm=NONE
hi ErrorMsg ctermfg=NONE ctermbg=red cterm=NONE
hi WarningMsg ctermfg=NONE ctermbg=red cterm=NONE
hi SpellBad ctermfg=208 ctermbg=NONE cterm=NONE

hi phpFunctions ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpFunction ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpDefine ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpStatement ctermfg=NONE ctermbg=NONE cterm=BOLD
hi phpInclude ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpType ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpRegion ctermfg=NONE ctermbg=NONE cterm=BOLD
hi phpIdentifier ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpMethodsVar ctermfg=NONE ctermbg=NONE cterm=NONE
hi phpParent ctermfg=NONE ctermbg=NONE cterm=NONE
hi! link phpVarSelector phpIdentifier
hi phpSpecialFunction ctermfg=NONE cterm=NONE
hi phpException ctermfg=NONE cterm=NONE


hi jsFunctionKey ctermfg=229 ctermbg=NONE cterm=BOLD
hi PythonFunction ctermfg=123 ctermbg=NONE cterm=BOLD
hi Function ctermfg=230 ctermbg=NONE cterm=BOLD

highlight DiffAdd term=NONE cterm=NONE ctermbg=NONE ctermfg=45
highlight DiffChange term=NONE cterm=NONE ctermbg=17 ctermfg=NONE
highlight DiffText term=NONE cterm=NONE ctermbg=26 ctermfg=NONE
highlight DiffDelete term=reverse cterm=NONE ctermbg=NONE ctermfg=NONE

" highlight PmenuSel ctermfg=white ctermbg=black
highlight VimwikiLink cterm=bold,underline ctermfg=green ctermbg=NONE

" directory color in Netrw listing
hi netrwDir ctermfg=81 ctermbg=NONE cterm=NONE
" Conceal - used by pandoc
hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question ctermfg=NONE ctermbg=NONE cterm=NONE
hi qfFileName ctermfg=NONE cterm=NONE 
hi vimWikiHeader1 ctermfg=NONE ctermbg=NONE cterm=BOLD
hi vimWikiHeader2 ctermfg=NONE ctermbg=NONE cterm=BOLD
hi vimWikiHeader3 ctermfg=NONE ctermbg=NONE cterm=BOLD
hi vimWikiHeaderChar ctermfg=NONE ctermbg=NONE cterm=BOLD
hi vimWikiBold ctermfg=NONE ctermbg=NONE cterm=BOLD
hi vimWikiList ctermfg=NONE ctermbg=NONE cterm=NONE
hi vimWikiPre ctermfg=159 ctermbg=NONE cterm=NONE
hi vimWikiCode ctermfg=159 ctermbg=NONE cterm=NONE
hi vimUserFunc ctermfg=NONE ctermbg=NONE cterm=BOLD
hi markdownCode ctermfg=159 ctermbg=NONE cterm=NONE

" hi rubyRegexp          ctermfg=NONE ctermbg=NONE cterm=NONE
" hi rubyRegexpDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyControl ctermfg=NONE ctermbg=NONE cterm=BOLD
hi rubyModule ctermfg=NONE ctermbg=NONE cterm=BOLD
hi snipSnippetFooterKeyword ctermfg=47 ctermbg=NONE cterm=NONE
hi link snipSnippetHeaderKeyword snipSnippetFooterKeyword
hi snipSnippetTrigger ctermfg=50 ctermbg=NONE cterm=NONE

hi ColorColumn ctermfg=NONE ctermbg=NONE
hi htmlError ctermfg=215 ctermbg=NONE cterm=UNDERLINE

hi diffRemoved ctermfg=196 ctermbg=232 cterm=NONE
hi diffAdded ctermfg=40 ctermbg=NONE cterm=NONE

highlight TestOk    ctermfg=40
highlight TestError ctermfg=203

hi DjangoTagBlock ctermfg=219
hi link DjangoVarBlock DjangoTagblock
hi link DjangoStatement DjangoTagblock

hi PythonStatement cterm=BOLD

hi javaScriptBraces ctermfg=NONE cterm=NONE
hi javaAnnotation ctermfg=NONE ctermbg=NONE cterm=BOLD
hi javaStatement ctermfg=229 ctermbg=NONE cterm=BOLD
hi sqlKeyword ctermfg=NONE ctermbg=NONE cterm=BOLD
hi sqlStatement ctermfg=NONE ctermbg=NONE cterm=BOLD
hi clojureKeyword ctermfg=NONE ctermbg=NONE cterm=BOLD
hi clojureDefine ctermfg=NONE ctermbg=NONE cterm=BOLD
