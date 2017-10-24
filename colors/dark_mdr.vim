set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "dark_mdr"

" General colors
hi Normal    ctermfg=255    ctermbg=232    cterm=BOLD
hi NonText    ctermfg=gray    ctermbg=NONE    cterm=NONE

hi Cursor    ctermfg=NONE    ctermbg=NONE    cterm=REVERSE
hi LineNr    ctermfg=darkgray    ctermbg=NONE    cterm=NONE

hi StatusLine    ctermfg=white    ctermbg=darkgray    cterm=NONE
hi StatusLineNC    ctermfg=blue    ctermbg=darkgray    cterm=NONE

hi Folded    ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Title    ctermfg=158    ctermbg=NONE    cterm=NONE
hi markdownHeadingDelimiter ctermfg=158 ctermbg=NONE cterm=NONE
hi Visual    ctermfg=red    ctermbg=NONE    cterm=REVERSE

hi SpecialKey    ctermfg=NONE    ctermbg=NONE    cterm=NONE

hi WildMenu    ctermfg=black    ctermbg=yellow    cterm=NONE
hi PmenuSbar    ctermfg=black    ctermbg=white    cterm=NONE
"hi Ignore    ctermfg=NONE    ctermbg=NONE    cterm=NONE

hi Error    ctermfg=white    ctermbg=black    cterm=NONE
hi ErrorMsg    ctermfg=white    ctermbg=black    cterm=NONE
hi WarningMsg    ctermfg=white    ctermbg=black    cterm=NONE
hi LongLineWarning    ctermfg=NONE    ctermbg=NONE          cterm=underline

" Message displayed in lower left, such as --INSERT--
hi ModeMsg    ctermfg=black    ctermbg=cyan    cterm=BOLD

if    version    >= 700    " Vim 7.x specific colors
  hi    CursorLine    ctermfg=NONE    ctermbg=NONE    cterm=BOLD
  hi    CursorColumn    ctermfg=NONE    ctermbg=NONE    cterm=BOLD
  hi    MatchParen    ctermfg=NONE    ctermbg=NONE    cterm=REVERSE
  hi    Pmenu    ctermfg=NONE    ctermbg=NONE    cterm=NONE
  hi    PmenuSel    ctermfg=NONE    ctermbg=NONE    cterm=NONE
  hi    Search    ctermfg=NONE    ctermbg=NONE          cterm=underline
endif

" Syntax highlighting
hi String    ctermfg=157    ctermbg=NONE    cterm=NONE
hi Number    ctermfg=225    ctermbg=NONE    cterm=BOLD

hi Keyword    ctermfg=yellow    ctermbg=NONE    cterm=NONE
hi PreProc    ctermfg=159    ctermbg=NONE    cterm=BOLD
hi Conditional    ctermfg=229    ctermbg=NONE    cterm=BOLD    " if    else    end

hi Todo    ctermfg=red    ctermbg=NONE    cterm=NONE
hi Constant    ctermfg=cyan    ctermbg=NONE    cterm=NONE

" custom Identifier
hi Identifier    ctermfg=blue    ctermbg=NONE    cterm=BOLD
" Type 'public', 'class'
hi Type    ctermfg=229    ctermbg=NONE    cterm=NONE
" Statement - if    else    return
hi Statement    ctermfg=white    ctermbg=NONE    cterm=BOLD

" Special - (){}[]
hi Special    ctermfg=white    ctermbg=NONE    cterm=BOLD
hi Delimiter    ctermfg=white    ctermbg=NONE    cterm=NONE
hi Operator    ctermfg=white    ctermbg=NONE    cterm=BOLD

hi link    Character    Constant
hi link    Boolean    Constant
hi link    Float    Number
hi link    Repeat    Statement
hi link    Label    Statement
hi link    Exception    Statement
hi link    Include    PreProc
hi link    Define    PreProc
hi link    Macro    PreProc
hi link    PreCondit    PreProc
hi link    StorageClass    Type
hi link    Structure    Type
hi link    Typedef    Type
hi link    Tag    Special
hi link    SpecialChar    Special
hi link    SpecialComment    Special
hi link    Debug    Special


" Special for    Ruby
hi rubyRegexp    ctermfg=brown    ctermbg=NONE    cterm=NONE
hi rubyRegexpDelimiter    ctermfg=brown    ctermbg=NONE    cterm=NONE
hi rubyEscape    ctermfg=cyan    ctermbg=NONE    cterm=NONE
hi rubyInterpolationDelimiter    ctermfg=blue    ctermbg=NONE    cterm=NONE
hi rubyControl    ctermfg=blue    ctermbg=NONE    cterm=NONE    "and    break, etc
hi rubyStringDelimiter    ctermfg=lightgreen    ctermbg=NONE    cterm=NONE

hi link    rubyClass    Keyword    
hi link    rubyModule    Keyword    
hi link    rubyKeyword    Keyword    
hi link    rubyOperator    Operator
hi link    rubyIdentifier    Identifier
hi link    rubyInstanceVariable    Identifier
hi link    rubyGlobalVariable    Identifier
hi link    rubyClassVariable    Identifier
hi link    rubyConstant    Type    

" Special for    XML
hi link    xmlTag    Keyword    
hi link    xmlTagName    Conditional    
hi link    xmlEndTag    Identifier    

" Special for    HTML
hi link    htmlTag    Conditional    
hi link    htmlTagName    Conditional    
hi link    htmlEndTag    Conditional    

" Special for    Javascript
hi link    javaScriptNumber    Number    

" Special for    Python
hi link    pythonEscape    Keyword    


hi Comment    ctermfg=252    cterm=NONE
hi StatusLine    ctermbg=darkgrey    ctermfg=white
hi StatusLineNC    ctermbg=gray    ctermfg=black
hi VertSplit    ctermbg=black    ctermfg=gray
hi LineNr    ctermfg=gray
hi TabLine    ctermfg=black    ctermbg=gray
hi TabLineFill    ctermfg=darkgray    ctermbg=black
hi TabLineSel    ctermfg=white    ctermbg=black
hi CursorLine    ctermfg=NONE    ctermbg=238
hi Visual    ctermfg=NONE    ctermbg=241    cterm=NONE
hi Function    ctermfg=yellow    ctermbg=NONE    cterm=BOLD

hi Error    ctermfg=16    ctermbg=red    cterm=NONE    " undercurl    color
hi ErrorMsg    ctermfg=16    ctermbg=red    cterm=NONE
hi WarningMsg    ctermfg=16    ctermbg=red    cterm=NONE
hi SpellBad    ctermfg=16    ctermbg=160    cterm=NONE

" phpIdentifier - variables
" hi phpIdentifier ctermfg=15    ctermbg=NONE    cterm=BOLD
" phpVarSelector - $
hi link    phpVarSelector    phpIdentifier
" phpOperator = & ::
hi phpOperator    ctermfg=white    ctermbg=NONE    cterm=BOLD
hi phpMethodsVar    ctermfg=195    ctermbg=NONE    cterm=NONE
hi phpMethods    ctermfg=195    ctermbg=NONE    cterm=NONE
hi phpMemberSelector    ctermfg=254    ctermbg=NONE    cterm=NONE
hi phpFunctions    ctermfg=14    ctermbg=NONE    cterm=NONE
hi phpStatement ctermfg=123 ctermbg=NONE cterm=NONE
hi phpDefine ctermfg=123 ctermbg=NONE cterm=NONE
hi phpRegion ctermfg=7 ctermbg=NONE cterm=BOLD
hi phpHereDoc    ctermfg=193    ctermbg=NONE    cterm=NONE
hi phpException ctermfg=214 ctermbg=NONE cterm=NONE
hi phpRegion ctermfg=195 ctermbg=NONE cterm=NONE
hi phpIdentifier ctermfg=158 ctermbg=NONE cterm=NONE

hi DiffAdd    term=reverse    cterm=bold    ctermbg=lightgreen    ctermfg=16
hi DiffChange    term=reverse    cterm=bold    ctermbg=lightblue    ctermfg=16
hi DiffText    term=reverse    cterm=bold    ctermbg=lightgray    ctermfg=16
hi DiffDelete    term=reverse    cterm=bold    ctermbg=lightred    ctermfg=16

hi PmenuSel    ctermfg=16    ctermbg=231
hi PmenuThumb    ctermfg=16    ctermbg=231
hi ModeMsg    ctermfg=16    ctermbg=231    cterm=BOLD
hi Conceal    ctermfg=blue    ctermbg=NONE    cterm=BOLD
hi pandocDelimitedCodeBlock    ctermfg=2    ctermbg=NONE    cterm=BOLD
hi pandocReferenceLabel    ctermfg=117    ctermbg=NONE    cterm=BOLD
hi vimWikiLink    ctermfg=115    ctermbg=NONE    cterm=BOLD,UNDERLINE
hi vimWikiHeader    ctermfg=105    ctermbg=NONE    cterm=BOLD,UNDERLINE

hi sqlKeyword ctermfg=83
hi sqlStatement ctermfg=82
hi markdownItalic ctermfg=14 ctermbg=232 cterm=NONE
hi markdownBold ctermfg=6 ctermbg=232 cterm=BOLD

hi rubyRegexp          ctermfg=45 ctermbg=NONE cterm=NONE
hi rubyRegexpDelimiter ctermfg=39 ctermbg=NONE cterm=NONE
