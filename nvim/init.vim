
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
source $CONFIG/vim/plugConfig/discordConfig.vim
source $CONFIG/vim/plugConfig/rangerConfig.vim
source $CONFIG/vim/plugConfig/telescope.vim
source $CONFIG/vim/plugConfig/nvimTree.vim
source $CONFIG/vim/plugConfig/whichKey.vim
source $CONFIG/vim/plugConfig/lazygit.vim

" locate python bin
let g:python3_host_prog=$HOME.'/.venv/bin/python3'

"------------------------------------------------------------------------------"
"                                   LuaScript                                  "
"------------------------------------------------------------------------------"

" plugin configs


