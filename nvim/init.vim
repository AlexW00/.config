
"------------------------------------------------------------------------------"
"                               Global Variables                               "
"------------------------------------------------------------------------------"

let $CONFIG = "~/.config/nvim/"

"------------------------------------------------------------------------------"
"                                   VimScript                                  "
"------------------------------------------------------------------------------"

" basic editor configs
source $CONFIG/vim/basics.vim
" load all plugins using the plugin manager 
source $CONFIG/vim/plugins.vim
" keybinds
source $CONFIG/vim/keybinds.vim
" appearance
source $CONFIG/vim/appearance.vim

" plugin configs
source $CONFIG/vim/plugConfig/lightLineConfig.vim
source $CONFIG/vim/plugConfig/floatterm.vim
source $CONFIG/vim/plugConfig/telescope.vim
source $CONFIG/vim/plugConfig/other.vim

" locate python bin
let g:python3_host_prog=$HOME.'/.venv/bin/python3'

"------------------------------------------------------------------------------"
"                                   LuaScript                                  "
"------------------------------------------------------------------------------"

" plugin configs


