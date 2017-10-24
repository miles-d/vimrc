" 16 - black
" 18 - dark blue
" 30 - dark cyan
" 20
" 52 - brown-ish
" 124 - dark red



set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "light_mdr"


"hi Example         guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" General colors
hi Normal           guifg=#f6f3e8     guibg=black       gui=NONE      ctermfg=16   ctermbg=255        cterm=NONE
hi NonText          guifg=#070707     guibg=black       gui=NONE      ctermfg=16       ctermbg=NONE        cterm=NONE

hi Cursor           guifg=black       guibg=white       gui=NONE      ctermfg=16       ctermbg=white       cterm=NONE
hi LineNr           guifg=#3D3D3D     guibg=black       gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi VertSplit        guifg=#202020     guibg=#202020     gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine       guifg=#CCCCCC     guibg=#202020     gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=black       guibg=#202020     gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE  

hi Folded           guifg=#a0a8b0     guibg=#384048     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title            guifg=#f6f3e8     guibg=NONE        gui=bold      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=red        ctermbg=NONE        cterm=REVERSE

hi SpecialKey       guifg=#808080     guibg=#343434     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu         guifg=green       guibg=52      gui=NONE      ctermfg=black       ctermbg=52      cterm=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore           guifg=gray        guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=white       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi LongLineWarning  guifg=NONE        guibg=#371F1C     gui=underline ctermfg=NONE        ctermbg=NONE	      cterm=underline

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=231       ctermbg=16        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=black       ctermbg=white    cterm=NONE
  hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi Search         guifg=NONE        guibg=#2F2F00     gui=underline ctermfg=NONE        ctermbg=NONE	      cterm=underline
endif

" Syntax highlighting
hi Comment          guifg=#7C7C7C     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi String           guifg=#A8FF60     guibg=NONE        gui=NONE      ctermfg=20       ctermbg=NONE        cterm=NONE
hi Number           guifg=#FF73FD     guibg=NONE        gui=NONE      ctermfg=24     ctermbg=NONE        cterm=NONE

hi Keyword          guifg=#96CBFE     guibg=NONE        gui=NONE      ctermfg=52        ctermbg=NONE        cterm=NONE
hi PreProc          guifg=#96CBFE     guibg=NONE        gui=BOLD      ctermfg=124        ctermbg=NONE        cterm=BOLD
hi Conditional      guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=52        ctermbg=NONE        cterm=NONE  " if else end

hi Todo             guifg=#8f8f8f     guibg=NONE        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
hi Constant         guifg=#99CC99     guibg=NONE        gui=NONE      ctermfg=30        ctermbg=NONE        cterm=NONE

" custom Identifier
hi Identifier       guifg=#C7C5FE     guibg=NONE        gui=NONE      ctermfg=black        ctermbg=NONE        cterm=NONE
" Type 'public', 'class'
hi Type             guifg=#FFFFB6     guibg=NONE        gui=BOLD      ctermfg=52      ctermbg=NONE        cterm=BOLD
" Statement - if else return
hi Statement        guifg=#6699CC     guibg=NONE        gui=BOLD      ctermfg=16   ctermbg=NONE        cterm=BOLD

" Special - (){}[]
hi Special          guifg=#E18964     guibg=NONE        gui=BOLD      ctermfg=28       ctermbg=NONE        cterm=BOLD
hi Delimiter        guifg=#00A0A0     guibg=NONE        gui=NONE      ctermfg=18        ctermbg=NONE        cterm=BOLD " 18 - dark blue
hi Operator         guifg=white       guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 guifg=#6699CC      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword 
hi link rubyModule            Keyword 
hi link rubyKeyword           Keyword 
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type  


" Special for Java
" hi link javaClassDecl    Type
" hi link javaScopeDecl         Identifier 
" hi link javaCommentTitle      javaDocSeeTag 
" hi link javaDocTags           javaDocSeeTag 
" hi link javaDocParam          javaDocSeeTag 
" hi link javaDocSeeTagParam    javaDocSeeTag 

" hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
" hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword 
hi link xmlTagName      Conditional 
hi link xmlEndTag       Identifier 


" Special for HTML
hi link htmlTag         Keyword 
hi link htmlTagName     Conditional 
hi link htmlEndTag      Identifier 


" Special for Javascript
hi link javaScriptNumber      Number 


" Special for Python
"hi  link pythonEscape         Keyword      

hi Comment ctermfg=darkgray guifg=darkgray cterm=NONE

hi StatusLine ctermbg=darkgrey ctermfg=white
hi StatusLineNC ctermbg=16 ctermfg=lightgrey
hi VertSplit ctermbg=16 ctermfg=lightgrey
hi LineNr ctermfg=darkgray
hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=lightgray
hi Function         guifg=#FFD2A7     guibg=NONE        gui=BOLD      ctermfg=52       ctermbg=NONE        cterm=BOLD
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE        ctermbg=gray    cterm=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=16       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16       ctermbg=red         cterm=NONE
hi SpellBad       guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16       ctermbg=160         cterm=NONE

" hi Operator        guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=red   ctermbg=NONE        cterm=NONE
hi phpRegion       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=30 ctermbg=NONE    cterm=BOLD
" phpIdentifier - variables
hi phpIdentifier       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=18 ctermbg=NONE    cterm=BOLD
" phpVarSelector - $
hi phpVarSelector       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=18 ctermbg=NONE    cterm=BOLD
" phpOperator = & ::
" hi phpOperator       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=red ctermbg=NONE    cterm=NONE
" hi phpVarSelector       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=lightblue ctermbg=red    cterm=NONE
" hi phpOperator       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=white ctermbg=NONE    cterm=BOLD
" hi phpMethodsVar       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=159 ctermbg=NONE    cterm=BOLD
hi phpMemberSelector       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE ctermbg=NONE    cterm=BOLD

highlight DiffAdd term=reverse cterm=bold ctermbg=lightgreen ctermfg=16
highlight DiffChange term=reverse cterm=bold ctermbg=lightblue ctermfg=16
highlight DiffText term=reverse cterm=bold ctermbg=lightgray ctermfg=16
highlight DiffDelete term=reverse cterm=bold ctermbg=lightred ctermfg=16

highlight PmenuSel ctermfg=16 ctermbg=156

hi netrwDir guifg=NONE        guibg=NONE        gui=NONE      ctermfg=16 ctermbg=NONE    cterm=BOLD
hi NERDTreeDir guifg=NONE        guibg=NONE        gui=NONE      ctermfg=19 ctermbg=NONE    cterm=BOLD
hi NERDTreeUp guifg=NONE        guibg=NONE        gui=NONE      ctermfg=231 ctermbg=18    cterm=BOLD
highlight VimwikiLink cterm=bold,underline ctermfg=19 ctermbg=NONE
