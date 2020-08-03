set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

set t_Co=256
set dir=~/.swp
set visualbell
set noerrorbells
set report=0
set guifont=Hack\ 12
set statusline=~
set showmode
set nocompatible
set term=screen-256color

set ai
set smartindent
set cindent
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set cino=(0,W4,g1,j1
set relativenumber
set number
set cursorline
set tw=120

set incsearch
set hlsearch
set smartcase

syntax on
filetype plugin indent on
colorscheme wombat256mod

noremap k j
noremap l k
noremap ; l
noremap j h

map n nzz
map N Nzz

let mapleader=" "

nnoremap <Leader>- :split<CR>
nnoremap <Leader>% :vsplit<CR>
nnoremap <Leader>; <C-W>l
nnoremap <Leader><Space> <C-^>
nnoremap <Leader>a :A<CR>
nnoremap <Leader>b :ls<CR>
nnoremap <Leader>c :noh<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>fb :CtrlPBuffer<CR>
nnoremap <Leader>fd :CtrlP<CR>
nnoremap <Leader>ff :CtrlPMRU
nnoremap <Leader>g gf
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gg :Ggrep <cword><CR>
nnoremap <Leader>ggw :Ggrep
nnoremap <Leader>gl :Gllog<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>h :hide<CR>
nmap <Leader>i o<CR>jk:pu!=strftime('%T')<CR><Plug>VimwikiAddHeaderLevelo
nmap <Leader>ii :pu!=strftime('%T')<CR><Plug>VimwikiAddHeaderLevelo
nnoremap <Leader>j <C-W>h
nnoremap <Leader>k <C-W>j
nnoremap <Leader>l <C-W>k
nnoremap <Leader>m :Bookmark<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>qq :qa<CR>
nnoremap <Leader>s <C-W>x
nnoremap <Leader>tn :tn<CR>
nnoremap <Leader>tp :tp<CR>
nnoremap <Leader>w :wa<CR>
nnoremap <C-j> <C-W>j
nnoremap + <C-W>+
nnoremap - <C-W>-
imap jk <Esc>

nnoremap <Leader>2 :diffget //2<CR>
nnoremap <Leader>3 :diffget //3<CR>

map <C-K> :py3file clang-format.py

au BufWritePre * %s/\s\+$//e

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

let g:ctrlp_match_window='bottom,order:ttb,min:5,max:30'
let g:ctrlp_switch_buffer='ET'
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files']
" Fix some typos caused by holding shift down for too long
" map :S :s
" map :X :x
" map :Q :q
" map :N :n
" map :W :w
" map :%S :%s
