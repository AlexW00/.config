" Auto-detect terminal background
if &term =~ '256color'
  " Check if terminal has a light background
  if system('[ "$COLORFGBG" != "" ] && echo $COLORFGBG | grep -q ".*;0" && echo yes') =~ 'yes'
    set background=light
    colorscheme xcodewwdc " or your preferred light theme
  else
    set background=dark
    colorscheme xcodedarkhc
  endif
endif

set guifont=Hack\ Nerd\ Font:h14
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guifg=NONE guibg=NONE
set conceallevel=0
syntax enable
set termguicolors 
