let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

command! Vifm FloatermNew --wintype=edit vifm

" vifm floatterm
nnoremap <leader>e :Vifm<CR>
