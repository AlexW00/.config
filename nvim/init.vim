
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
source $CONFIG/vim/plugConfig/undoTreeConfig.vim
source $CONFIG/vim/plugConfig/startifyConfig.vim
source $CONFIG/vim/plugConfig/cocConfig.vim
source $CONFIG/vim/plugConfig/lightLineConfig.vim
source $CONFIG/vim/plugConfig/vifmConfig.vim

"------------------------------------------------------------------------------"
"                                   LuaScript                                  "
"------------------------------------------------------------------------------"

" plugin configs
lua require('snap-config')

