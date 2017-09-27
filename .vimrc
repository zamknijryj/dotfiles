set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " require

colorscheme space-vim-dark
hi Comment cterm=italic

nnoremap H gT
nnoremap L gt

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='violet'

set smartindent
set smarttab
set softtabstop=4

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


let g:jedi#smart_auto_mappings = 0

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
:map <C-t> :tabnew <Enter>
:map <C-w> :close <Enter>
:map <C-W> :q! <Enter>
:map <C-n> :enew
:map <C-o> :e . <Enter>

map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>

set backupdir-=.
set backupdir^=~/tmp,/tmp
set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8

map <F8> :NERDTreeToggle<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4


" normal copy/paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
imap <C-v> <Esc>pi
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>u

nnoremap <silent> <F5> :!clear;python3.6 %<CR>

nnoremap <F2> :set invpaste paste?<CR>

autocmd FileType python noremap <buffer> <F3> :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1

set pastetoggle=<F2>
set showmode


" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
