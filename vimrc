syntax on
packloadall
set guicursor=
set tabstop=2 softtabstop=2
set shiftwidth=2
set autoindent
set nohlsearch
set smarttab
set noerrorbells
set noswapfile
set nobackup
set expandtab
set nu
set hidden
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set incsearch
set bg=dark
set encoding=utf8
set guifont=Fira_Mono:h13
set colorcolumn=80
set signcolumn=yes
set ruler
set path+=**
set wildmenu
set mouse=a

filetype plugin indent on

" SNIPPETS:

" Read empty html template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>5jwf>a
" React Functional Component with Search and Replace
nnoremap ,rfc :-1read $HOME/.vim/.skeleton.rfc.js<CR>:%s/App/
" Import React from 'react'
nnoremap ,ir :-1read $HOME/.vim/.snippet.ir.js<CR><CR>
" React DOM seleton for index.js file
nnoremap ,rdc :-1read $HOME/.vim/.skeleton.rdi.js<CR>

" Display

set statusline=%f%m%r%h%w\ [%Y]\ [0x%02.2B]%<\ %F%4v,%4l\ %3p%%\ of\ %L\ lines 
set laststatus=2
" Other MAPPINGS

"<Ctrl-l> redraws the screen and unhighlights any previous searches
nnoremap <silent> <C-l> :nohl<CR><C-l>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'honza/vim-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-eslint', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Telescope requirements

call plug#end()


let g:dracula_italic = 0
syntax enable
colorscheme dracula

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

inoremap kj <Esc>
cnoremap kj <Esc>
