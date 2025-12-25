let mapleader=' '

set showcmd
set notimeout
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set noincsearch
set hidden
set wildmode=longest:full,full
set nostartofline
set laststatus=2
set statusline=+%f%m%=%l/%L\ %P
set updatetime=1000
set nofileignorecase
set signcolumn=number

nnoremap <c-s> :update<CR>
inoremap <c-s> <c-c>:update<CR>
nnoremap <leader>t :term<CR>

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlPBuffer'
let g:ctrlp_by_filename=1
let g:ctrlp_working_path_mode='c'

highlight! link SignColumn LineNr
highlight GitGutterAdd guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:gitgutter_set_sign_backgrounds=1

autocmd BufRead,BufNewFile *.rules set filetype=javascript
autocmd BufRead,BufNewFile *.s set filetype=asm
autocmd FileType java,python setlocal tabstop=4 shiftwidth=4
autocmd FileType make,c,cpp,asm,nasm setlocal shiftwidth=8 tabstop=8 noexpandtab
