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
"set cursorline

"Pluging instalados
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rakr/vim-one'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'tikhomirov/vim-glsl'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scrooloose/syntastic'

Plug 'ctrlpvim/ctrlp.vim'
"Plug 'itchyny/lightline.vim'
call plug#end()
"sirve para poder ir a errores con syntastic
"let g:syntastic_always_populate_loc_list = 1
"Lugar donde guardo mis librerias de C/C++
"let g:syntastic_cpp_include_dirs = ['D:\Dev_Libs\include']


"Tema utilizado
colorscheme tomi 
"Cursivas para tema one
let g:one_allow_italics = 1
set background=dark

"Configuracion especifica de gui
if has("gui_running")
"set guifont=Consolas:h14:cANSI
set guifont=liberation_mono:h11:cANSI
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
    let &makeprg = 'mingw32-make'
    nnoremap <C-c> :make<Enter>
    nnoremap <C-x> :!run.bat<Enter>
endif

nmap <F2> :NERDTreeToggle<CR>

nmap <M-n> :cn<CR>
nmap <M-S-n> :cp<CR>
"Configuracion para lightline (muestra el path del archivo)
"let g:lightline = {
"      \ 'colorscheme': 'jellybeans',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'readonly', 'filename', 'modified', 'absolutepath' ] ]
"      \ },
"      \ }

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
