"basics
syntax on
set number


set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
" set mouse=a
let base16colorspace=256
set timeoutlen=1000 ttimeoutlen=0
set showmatch
set wildmenu
set shell=/bin/bash
setlocal foldmethod=indent
set foldlevel=99
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
filetype plugin indent on
"hi CursorLine term=bold cterm=bold ctermbg=Gray
colorscheme wal

" Hard Mode activated
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Rvght> <NOP>

call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neoinclude.vim'
Plug 'dylanaraps/wal.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()