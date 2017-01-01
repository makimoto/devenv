scriptencoding utf-8
set backspace=indent,eol,start
set textwidth=0
set nobackup
set viminfo='500,<10000,s1000,\"500
set history=1000
set ruler

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set modelines=0

set smartindent
set ignorecase
set smartcase
set wrapscan
set hlsearch

set list
set listchars=tab:>-,trail:\ 

set showcmd
set showmatch
set laststatus=2
set wildmode=list:longest
set hidden
set autoread
set noincsearch

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

let s:dein_dir = expand('~/.config/nvim/dein')
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file])
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

nnoremap <ESC><ESC> :nohl<CR>
