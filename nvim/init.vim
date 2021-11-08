
"------------------------------------------------------------------------------"
"                                 General stuff                                "
"------------------------------------------------------------------------------"

set number " enable line numbers
syntax enable " enable syntax processing
set tabstop=4 " number of spaces displayed for a tabs character
set softtabstop=4 " number of spaces to insert when pressing tab
set shiftwidth=4
set expandtab ai " use spaces instead of tabs
filetype plugin indent on " filetype-specific indentations
set wildmenu " visual autocomplete for command mode
set incsearch " search while typing the query
set hlsearch " highlight search results
set laststatus=2 " always show filename
" Line numbers
set number
set numberwidth=3
set relativenumber
set mouse=a

"------------------------------------------------------------------------------"
"                                  Keybindings                                 "
"------------------------------------------------------------------------------"

let mapleader = ","
set laststatus=2
set t_Co=256
" Movement
map J 5j
map K 5k
map L $
map H ^
" surround quote
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q[ ciw[]<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
" create tabs quicker
nnoremap <Leader>t :tabnew<Space>
" remap leave insert mode to jj
inoremap jj <ESC>
" clear search highligting
nnoremap <Leader>h :noh<CR>


"------------------------------------------------------------------------------"
"                                    Plugins                                   "
"------------------------------------------------------------------------------"

call plug#begin() 
Plug 'victorze/foo'
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
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
call plug#end()

" snap

lua<<EOF
local snap = require'snap'
snap.maps {
  {"<Leader><Leader>", snap.config.file {producer = "ripgrep.file"}},
  {"<Leader>fb", snap.config.file {producer = "vim.buffer"}},
  {"<Leader>fo", snap.config.file {producer = "vim.oldfile"}},
  {"<Leader>ff", snap.config.vimgrep {}},
}
EOF


"Undo tree
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0
let g:undotree_DiffAutoOpen = 0
" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  augroup END
endif
syntax enable
colorscheme discord
hi onedark guibg=NONE ctermbg=NONE

set termguicolors " this variable must be enabled for colors to be applied properly


"------------------------------------------------------------------------------"
"                                  Appearence                                  "
"------------------------------------------------------------------------------"


" Startify
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_lists = [
      \ { 'type': 'commands',  'header': ['   🔨 Commands']       },
      \ { 'type': 'files',     'header': ['   ⏱  Recent']            },
      \ { 'type': 'sessions',  'header': ['   💼 Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   📕 Bookmarks']      },
      \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
            \ { 'g': '~/Documents/GitHub' },
            \ ]
let g:startify_commands = [
    \ {'n': ['new buffer', ':enew']},
    \ {'b': ['show buffers', ':Buffers']},
    \ {'f': ['explore files', ':Vifm']},
    \ {'q': ['quit', 'q']},
    \ ] 
set guifont=Hack\ Nerd\ Font:h14
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#enable_devicons = 1

" show buffer line on top
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
set showtabline=2


" startify
nnoremap <Leader>h :Startify<CR>
nnoremap <Leader>ss :SSave
nnoremap <Leader>sc :SClose<CR>
" undotree
nnoremap <Leader>u :UndotreeToggle<CR>
" cocplugins config stuff
nmap <Leader>r  <Plug>(coc-rename)
" Remap keys for gotos
nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gy <Plug>(coc-type-definition)
nmap <Leader>gi <Plug>(coc-implementation)
nmap <Leader>gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

"VIFM integration
nnoremap <Leader>vv :Vifm<CR>
nnoremap <Leader>vS :SplitVifm<CR>
nnoremap <Leader>vs :VsplitVifm<CR>
nnoremap <Leader>vd :DiffVifm<CR>

" Buffer lightline
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

nnoremap <Leader>cc :bd<CR> 

"------------------------------------------------------------------------------"
"                                Neovim specific                               "
"------------------------------------------------------------------------------"

if has('nvim')
endif
