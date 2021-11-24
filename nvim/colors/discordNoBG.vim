"  /$$$$$$$  /$$                                                                                 
"  | $$__  $$|__/                                                                                
"  | $$  \ $$ /$$  /$$$$$$$ /$$$$$$$  /$$$$$$  /$$$$$$$   /$$$$$$  /$$$$$$$   /$$$$$$$  /$$$$$$  
"  | $$  | $$| $$ /$$_____//$$_____/ /$$__  $$| $$__  $$ |____  $$| $$__  $$ /$$_____/ /$$__  $$ 
"  | $$  | $$| $$|  $$$$$$|  $$$$$$ | $$  \ $$| $$  \ $$  /$$$$$$$| $$  \ $$| $$      | $$$$$$$$ 
"  | $$  | $$| $$ \____  $$\____  $$| $$  | $$| $$  | $$ /$$__  $$| $$  | $$| $$      | $$_____/ 
"  | $$$$$$$/| $$ /$$$$$$$//$$$$$$$/|  $$$$$$/| $$  | $$|  $$$$$$$| $$  | $$|  $$$$$$$|  $$$$$$$ 
"  |_______/ |__/|_______/|_______/  \______/ |__/  |__/ \_______/|__/  |__/ \_______/ \_______/ 
" 
" Name: dissonance
" Author: Jacob P
" Version: 0.0.1

" Useful links: 
"   1. Cterm/hex color chart: https://jonasjacek.github.io/colors/
"   2. Highlight group information: https://jordanelver.co.uk/blog/2015/05/27/working-with-vim-colorschemes/
" ------------------------------------------------------------------------------------------------------------


set background=light

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "dissonance"




" Colors (see :help highlight-groups)" 
" {
    hi Normal         gui=none  guifg=#f2f2f2  guibg=NONE ctermbg=NONE


" Language
    hi Boolean      gui=none  guifg=#faa61a  guibg=none    
    hi Character    gui=none  guifg=#f04747  guibg=none    
    hi Comment      gui=none  guifg=#43b581  guibg=none    
    hi Conditional  gui=none  guifg=#faa61a  guibg=none    
    hi Constant     gui=none  guifg=#f04747  guibg=none    
    hi Error        gui=none  guifg=#f2f2f2  guibg=#f04747 
    hi Exception    gui=none  guifg=#f04747  guibg=none    
    hi Identifier   gui=none  guifg=#faa61a  guibg=none    
    hi Ignore       gui=none  guifg=#f04747  guibg=none    
    hi Operator     gui=none  guifg=#faa61a  guibg=none    
    hi PreProc      gui=none  guifg=#f2f2f2  guibg=none    
    hi Special      gui=none  guifg=#f2f2f2  guibg=none    
    hi Statement    gui=none  guifg=#faa61a  guibg=none    
    hi String       gui=none  guifg=#f04747  guibg=none    
    hi TODO         gui=none  guifg=#ff0000  guibg=none    
    hi Title        gui=none  guifg=none     guibg=none    
    hi Type         gui=none  guifg=#f2f2f2  guibg=none    
    hi Underlined   gui=none  guifg=#7289DA  guibg=none    
" }




" Extended Highlighting 
" {
    hi ColorColumn              gui=none        guifg=none     guibg=#23272A 
    hi Conceal                  gui=none        guifg=#ff5f00  guibg=none    
    hi CursorColumn             gui=none        guifg=#f04747  guibg=none    
    hi CursorLine               gui=none        guifg=#f2f2f2  guibg=#7289DA 
    hi CursorLineNr             gui=none        guifg=#f2f2f2  guibg=none    
    hi DiffAdd                  gui=none        guifg=#7289DA  guibg=none    
    hi DiffChange               gui=none        guifg=#f04747  guibg=none    
    hi DiffDelete               gui=none        guifg=#f04747  guibg=none    
    hi DiffText                 gui=none        guifg=#f2f2f2  guibg=none    
    hi Directory                gui=none        guifg=#f2f2f2  guibg=none    
    hi ErrorMsg                 gui=none        guifg=#f04747  guibg=none    
    hi FoldColumn               gui=none        guifg=#43b581  guibg=none    
    hi Folded                   gui=none        guifg=#43b581  guibg=none    
    hi HighlightedyankRegion    gui=none        guifg=#f2f2f2  guibg=#4F5F98 
    hi IncSearch                gui=none        guifg=#f2f2f2  guibg=#7289DA 
    hi LineNr                   gui=none        guifg=#7289DA  guibg=none    
    hi MatchParen               gui=none        guifg=#f04747  guibg=none    
    hi ModeMsg                  gui=none        guifg=#4e4e4e  guibg=none    
    hi MoreMsg                  gui=none        guifg=#6c6c6c  guibg=none    
    hi NonText                  gui=none        guifg=#f2f2f2  guibg=none    
    hi OverLength               gui=none        guifg=#f2f2f2  guibg=#f04747 
    hi Pmenu                    gui=none        guifg=#f2f2f2  guibg=#7289DA 
    hi PmenuSbar                gui=none        guifg=#f2f2f2  guibg=#7289DA 
    hi PmenuSel                 gui=none        guifg=#f2f2f2  guibg=#4F5F98 
    hi PmenuThumb               gui=none        guifg=#bcbcbc  guibg=none    
    hi Search                   gui=none        guifg=#f04747  guibg=#ffffe1 
    hi SignColumn               gui=none        guifg=#f04747  guibg=none    
    hi SpellBad                 gui=underline   guifg=#f04747  guibg=none    
    hi SpellCap                 gui=none        guifg=#af5f00  guibg=none    
    hi SpellLocal               gui=none        guifg=#008700  guibg=none    
    hi SpellRare                gui=none        guifg=#f04747  guibg=none    
    hi StatusLine               gui=none        guifg=#7289DA  guibg=none    
    hi StatusLineNC             gui=none        guifg=#f04747  guibg=none    
    hi VertSplit                gui=none        guifg=#585858  guibg=none    
    hi Visual                   gui=none        guifg=#f2f2f2  guibg=#7289DA 
    hi VisualNOS                gui=none        guifg=#f2f2f2  guibg=#7289DA 
    hi WildMenu                 gui=none        guifg=#000000  guibg=#ffd7ff 
" }




" LSP
" {
    hi LspDiagnosticsVirtualTextError       guifg=#f04747
    hi LspDiagnosticsVirtualTextHint        guifg=#f2f2f2
    hi LspDiagnosticsVirtualTextInformation guifg=#f2f2f2
    hi LspDiagnosticsVirtualTextWarning     guifg=#faa61a
                                             
    hi LspDiagnosticsUnderlineError         gui=underline
    hi LspDiagnosticsUnderlineHint          gui=underline
    hi LspDiagnosticsUnderlineInformation   gui=underline
    hi LspDiagnosticsUnderlineWarning       gui=underline
" } 




" C
" {
    hi cBoolean           gui=none   guifg=#faa61a   guibg=none 
    hi cConstant          gui=none   guifg=#EDEA28   guibg=none 
    hi cFormat            gui=none   guifg=#f04747   guibg=none 
    hi cMemberAccess      gui=none   guifg=#f2f2f2   guibg=none 
    hi cMulti             gui=none   guifg=#000000   guibg=none 
    hi cNumbers           gui=none   guifg=#f04747   guibg=none 
    hi cOperator          gui=none   guifg=#faa61a   guibg=none 
    hi cSpecial           gui=none   guifg=#f04747   guibg=none 
    hi cSpecialCharacter  gui=none   guifg=#7289DA   guibg=none 
    hi cStatement         gui=none   guifg=#faa61a   guibg=none 
    hi cStorageClass      gui=none   guifg=#00821E   guibg=none 
    hi cString            gui=none   guifg=#f04747   guibg=none 
    hi cStructMember      gui=none   guifg=#ff72b9   guibg=none 
    hi cStructure         gui=none   guifg=#ff72b9   guibg=none 
    hi cType              gui=none   guifg=#EDEA28   guibg=none 
    hi cUserFunction      gui=bold   guifg=#72bdda   guibg=none 
" }

" Plugins
" {
   hi SignatureMarkText     gui=none   guifg=#43b581  guibg=none   
" }

