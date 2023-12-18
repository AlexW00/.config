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

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


nnoremap <Leader>hs :split<CR>
nnoremap <Leader>vs :vsplit<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Clear search
nnoremap <CR> :noh<CR><CR>

" ctrl nav, unused (tmux)
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

