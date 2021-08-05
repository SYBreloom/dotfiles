source /etc/vim/vimrc 

set background=dark  " set backgound color  

" set visualbell

set noerrorbells " diable audible bell
set number " show column number

set nocompatible
syntax on
set showmode
set showcmd

set mouse=a " support mouse 
set t_Co=256 " 256 color

filetype indent on " enable file type detection
set autoindent
set history=8192 " more history
set tabstop=2 " tab space
set shiftwidth=4
set expandtab
set softtabstop=2

" relative colume number
set relativenumber 
" set cursorline

set wrap " wrap too-long line 
set linebreak " don't wrap in words
set wrapmargin=2 " margin in wrapped line
set scrolloff=5  " show lines above and below cursor (when possible)
set laststatus=2 " show Status Bar 
set ruler
set showmatch " show matching braces when text indicator is over them

" search
set hls " hightlighr search
set incsearch
set ignorecase
set smartcase

"jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set autoread " warn if the file editor by other process
set listchars=tab:»·,trail:· " set list to see tabs and non-breakable spaces
set list
set wildmenu
set wildmode=longest:list,full

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

set nu

" map jj to output <esc>
inoremap jj <esc>
imap ( ()<ESC>i
imap () ()<ESC>a

imap [ []<ESC>i
imap [] []<ESC>a
