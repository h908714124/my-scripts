set nocompatible
set hidden
autocmd Filetype sh setlocal tabstop=4
set clipboard=unnamedplus
set background=dark
syntax on
set wildmenu
set wildmode=longest:full,full

nnoremap <F7> :w !diff % -<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>
