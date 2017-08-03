set t_Co=256
set dir=~/.swp
set incsearch
syntax on
filetype plugin indent on
colorscheme wombat256mod

set nocompatible
set ignorecase

noremap k j
noremap l k
noremap ; l
noremap j h

map n nzz
map N Nzz

set term=screen-256color

let mapleader=' '
nnoremap <Leader>% :vsplit<CR>
nnoremap <Leader>- :split<CR>
nnoremap <Leader>; <C-W>l
nnoremap <Leader><Space> <C-^>
nnoremap <Leader>a :A<CR>
nnoremap <Leader>b :ls<CR>
nnoremap <Leader>c :noh<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>g gf
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gg :Ggrep <cword><CR>
nnoremap <Leader>gl :Gllog<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>h :hide<CR>
nnoremap <Leader>j <C-W>h
nnoremap <Leader>k <C-W>j
nnoremap <Leader>l <C-W>k
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>s <C-W>x
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>tn :tn<CR>
nnoremap <Leader>tp :tp<CR>
nnoremap <Leader>w :wa<CR>
nnoremap <Leader>ydec :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>ydef :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>yg :YcmCompleter GoTo<CR>
nnoremap <Leader>ygi :YcmCompleter GoToInclude<CR>
nnoremap <C-j> <C-W>j
nnoremap + <C-W>+
nnoremap - <C-W>-
imap jk <Esc>

au BufWritePre * %s/\s\+$//e

set expandtab
set tabstop=2
set shiftwidth=2
set cino=(0,W4

let g:airline_section_b='%p%%'
let g:airline_section_c='%.40F'

set grepprg=git\ grep\ -in
set grepformat=%f:%l%m

nnoremap <F3> :grep <cword><CR>
nnoremap <F9> :cp<CR>zz
nnoremap <F10> :cn<CR>zz
nnoremap <F11> :cl<CR>

set hidden
set laststatus=2
let g:airline_theme='molokai'
let g:ycm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
set relativenumber
set number
set cursorline
set tw=120

