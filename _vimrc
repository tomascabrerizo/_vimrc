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

"Configuracion especifica de gui
if has("gui_running")
"set guifont=Consolas:h12:cANSI
set guifont=liberation_mono:h12:cANSI
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
    "let &makeprg = 'mingw32-make'
    set makeprg=mingw32-make
    nnoremap <C-c> :make<Enter>
    nnoremap <C-x> :make run<Enter>
endif

nmap <F2> :NERDTreeToggle<CR>

nmap <M-n> :cn<CR>
nmap <M-S-n> :cp<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"Gvim colorsheme
highlight Title         guifg=#ccfccb
highlight Normal        guifg=#ccfccb       guibg=#1c1c1c
highlight PreProc       guifg=#ccfccb
highlight Number        guifg=#ccfccb

highlight Comment       guifg=#888888

highlight Constant      guifg=#00ff00       gui=none

highlight Identifier    guifg=#f2a359       gui=none  
highlight Statement     guifg=#f2a359       gui=none
highlight Type          guifg=#f2a359       gui=none
highlight Special       guifg=#f2a359       gui=none
highlight Function      guifg=#f2a359       gui=none
highlight Operator      guifg=#f2a359       gui=none
highlight Structure     guifg=#f2a359       gui=none
highlight Directory     guifg=#f2a359

highlight CursorLine    guibg=#222288 

highlight MatchParen    guifg=#ffffff       guibg=#4c4c4c

highlight Cursor        guibg=#00ff00
highlight CursorLineNR  guifg=#00ff00 

highlight Error                             guibg=#ff0000
highlight Todo          guifg=#ff0000       guibg=#1c1c1c       gui=bold

highlight Search        guibg=#c0c000
highlight Visual        guibg=#636363                           gui=bold
highlight Cursor        gui=bold
highlight StatusLine    guifg=#ffffff       guibg=#222288       gui=none 
highlight StatusLineNC  guifg=#ffffff       guibg=#444444       gui=none 
highlight VertSplit     guifg=#444444       guibg=#444444       gui=none
highlight LineNr        guifg=#888888
