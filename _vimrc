"Configuracion general
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

"Pluging instalados
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'mattn/emmet-vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
call plug#end()
"sirve para poder ir a errores con syntastic
let g:syntastic_always_populate_loc_list = 1
"Lugar donde guardo mis librerias de C/C++
let g:syntastic_cpp_include_dirs = ['D:\Dev_Libs\include']


"Tema utilizado
colorscheme gruvbox 
let g:one_allow_italics = 1
set background=dark

"Configuracion especifica de gui
if has("gui_running")
    set guifont=Consolas:h14:cANSI
    set guioptions -=m
    set guioptions -=T
    set guioptions -=r
    set guioptions -=L
endif

"Configuracion especifica de windows
if has("win32")
    set backspace=start,indent,eol 
    set clipboard=unnamed
    "Set Gvim to be Maximazed
    au GUIEnter * simalt ~x
    "Compile with window batfiles
    nnoremap <C-c> :!compile.bat<Enter>
    nnoremap <C-x> :!run.bat<Enter>
endif

"Remapeo de teclas
inoremap <C-a> <C-o>0
inoremap <C-d> <C-o>$

nnoremap <C-a> 0
nnoremap <C-d> $

"Coc ir a definicion
"nmap <silent> gd <Plug>(coc-definition)

"Configuracion para lightline (muestra el path del archivo)
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'absolutepath' ] ]
      \ },
      \ }
