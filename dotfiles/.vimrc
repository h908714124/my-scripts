set hidden
set background=dark
syntax on
set wildmenu
set wildmode=longest:full,full
"set cursorline
set ruler
set hlsearch
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

set laststatus=2
set statusline=
set statusline=+%t      "tail of filename
set statusline+=%m      "modified flag
set statusline+=%=      "left/right separator
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set nostartofline

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

"https://github.com/airblade/vim-gitgutter
set updatetime=1000
set nofileignorecase
set signcolumn=number

let g:gitgutter_set_sign_backgrounds=1
highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
