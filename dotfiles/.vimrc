set hidden
setlocal tabstop=4
set background=dark
syntax on
set wildmenu
set wildmode=longest:full,full

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

"https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

