set hidden
set tabstop=4
set background=dark
syntax on
set wildmenu
set wildmode=longest:full,full
"set cursorline
set ruler

set laststatus=2
set statusline=
set statusline=+%t      "tail of filename
set statusline+=%m      "modified flag
set statusline+=%=      "left/right separator
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

nnoremap <c-s> :update
inoremap <c-s> <c-c>:update

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
let g:ctrlp_cmd='CtrlPBuffer'

set updatetime=2000
set signcolumn=yes
set nofileignorecase
