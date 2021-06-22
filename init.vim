set nocompatible

" Turn on syntax highlighting.
syntax on

" Because who likes this crap
set noerrorbells visualbell t_vb=

" Some basic config
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set ignorecase
set smartcase
set number relativenumber	" set hybrid line numbering
set nu rnu			" set hybrid line numbering
set clipboard=unnamedplus	" allow copy paste between vim and other apps
set mouse=a

" Disable the default Vim startup message.
set shortmess+=I

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


" Keybinds
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-n> :NERDTreeToggle<CR>

" vim plug - plugins
call plug#begin('~/.vim/plugged')
  Plug 'tomasr/molokai'
  Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Enabel molokai + 256 color support
let g:rehash256 = 1
colorscheme molokai

" Nerdtree settings

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

