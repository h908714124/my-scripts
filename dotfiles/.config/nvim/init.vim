call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
call plug#end()

set tabstop=4
set cursorline

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <PageUp> <nop>
nnoremap <PageDown> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"https://github.com/ctrlpvim/ctrlp.vim
"let g:ctrlp_map='<c-p>'
"let g:ctrlp_cmd = 'CtrlPBuffer'

