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
nnoremap <Leader>h :Startify<CR>
nnoremap <Leader>ss :SSave
nnoremap <Leader>sc :SClose<CR>

