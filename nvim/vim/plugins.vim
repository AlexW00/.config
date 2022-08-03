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
Plug 'shapeoflambda/dark-purple.vim'
Plug 'joshdick/onedark.vim'
Plug 'McAuleyPenney/vim-dissonance'
Plug 'justinmk/vim-dirvish'
Plug 'mhinz/vim-startify'
Plug 'mbbill/undotree'
Plug 'ternjs/tern_for_vim'
Plug 'Shadorain/shadotheme'
Plug 'andweeb/presence.nvim'
Plug 'bronson/vim-visual-star-search'
Plug 'rebelot/kanagawa.nvim'
Plug 'arzg/vim-colors-xcode'
Plug 'iberianpig/ranger-explorer.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'dylanaraps/wal.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'liuchengxu/vim-which-key'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kdheepak/lazygit.nvim'
call plug#end()
