"------------------------------------------------------------------------------"
"                                    Plugins                                   "
"------------------------------------------------------------------------------"

call plug#begin() 
Plug 'victorze/foo'
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'cometsong/CommentFrame.vim'
Plug 'AndrewRadev/splitjoin.vim'
" status bar
Plug 'itchyny/lightline.vim'
" status bar buffers
Plug 'mengelbrecht/lightline-bufferline'
" Devicons
Plug 'ryanoasis/vim-devicons'
"Nord colorscheme
"Vifm integration
Plug 'vifm/vifm.vim'
Plug 'shapeoflambda/dark-purple.vim'
Plug 'joshdick/onedark.vim'
Plug 'McAuleyPenney/vim-dissonance'
Plug 'justinmk/vim-dirvish'
Plug 'mhinz/vim-startify'
Plug 'mbbill/undotree'
Plug 'andweeb/presence.nvim'
Plug 'camspiers/snap'
Plug 'ternjs/tern_for_vim'
Plug 'andweeb/presence.nvim'
call plug#end()
