let mapleader=" "
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
set noincsearch

set laststatus=2
set statusline=
set statusline=+%t      "tail of filename
set statusline+=%m      "modified flag
set statusline+=%=      "left/right separator
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set nostartofline

set showcmd
set timeout timeoutlen=400

nnoremap <leader>h :noh<CR>
nnoremap <c-s> :update<CR>
inoremap <c-s> <c-c>:update<CR>

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

"mkdir -p ~/.vim/pack/plugins/start
"git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
"vim -u NONE -c \"helptags ~/.vim/pack/plugins/start/ctrlp/doc\" -c q
"git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/pack/plugins/start/vim-gitgutter
"vim -u NONE -c \"helptags ~/.vim/pack/plugins/start/vim-gitgutter\" -c q
"git clone https://github.com/unblevable/quick-scope ~/.vim/pack/plugins/start/quick-scope
set runtimepath^=~/.vim/plugins/start/ctrlp
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlPBuffer'
let g:ctrlp_by_filename=1
let g:ctrlp_working_path_mode='c'

set updatetime=1000
set nofileignorecase
set signcolumn=number
let g:gitgutter_set_sign_backgrounds=1
highlight! link SignColumn LineNr
highlight GitGutterAdd guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"jump to last known cursor position when opening
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
