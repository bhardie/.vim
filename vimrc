set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
"call pathogen#infect()

filetype on
syntax on
set laststatus=2
set number
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set hlsearch
set ruler
set nofoldenable
set mouse=a

set showmode

set autoindent
set incsearch
set guifont=Monaco:h13bold

set guioptions-=T

syntax enable
set background=light
colorscheme solarized

let mapleader = ","
map <leader>n :NERDTreeToggle<CR>
map <leader>nm :NERDTreeMirror<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>h :nohlsearch<CR>
map <leader>p :PluginInstall<CR>
let g:fuzzy_ignore = "*.log,*.class,gems/gems/**"

let g:ctrlp_map = '<Tab>'
let g:ctrlp_cmd = 'CtrlP'

autocmd BufRead *.as set filetype=actionscript

:highlight RedundantSpaces ctermbg=white guibg=white
:match RedundantSpaces /\s\+$\| \+\ze\t/

"NO MORE MIDDLE CLICK PASTE!!!
:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>

"ctrlp options
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(test_preprocessed|production_preprocessed)$',
  \ }

