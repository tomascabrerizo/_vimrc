syntax on

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set noundofile
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox
set background=dark

if has("gui_running")
    set guifont=Consolas:h16:cANSI
    set guioptions -=m
    set guioptions -=T
    set guioptions -=r
    set guioptions -=L
endif

if has("win32")
    set backspace=start,indent,eol 
    set clipboard=unnamed
    
    nnoremap <C-c> :!compile.bat<Enter>
    nnoremap <C-x> :!run.bat<Enter>
endif

