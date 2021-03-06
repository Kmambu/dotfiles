"basics
syntax on
set number
set relativenumber


augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


set tabstop=4
set softtabstop=0 expandtab
set shiftwidth=4
set scrolloff=5
set smarttab
set mouse=a
let base16colorspace=256
set timeoutlen=1000 ttimeoutlen=0
set showmatch
set wildmenu
set shell=/bin/bash
setlocal foldmethod=indent
set foldlevel=99
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
filetype plugin indent on
colorscheme wal

cmap w!! w !sudo tee > /dev/null %

call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neoinclude.vim'
Plug 'dylanaraps/wal.vim'
Plug 'vim-utils/vim-man'
Plug 'airblade/vim-gitgutter'
Plug 'dylanaraps/wal.vim'
call plug#end()

