call pathogen#infect()

syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ignorecase
set hlsearch
set ruler

set showmode

set autoindent
set incsearch
set guifont=Monaco:h13bold

set guioptions-=T

syntax enable
set background=light
colorscheme solarized

let mapleader = ","
"nmap <Tab> :FuzzyFinderTextMate<CR>
"map <leader>b :FuzzyFinderBuffer<CR>
"map <leader>r :FuzzyFinderTextMateRefreshFiles<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>nm :NERDTreeMirror<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>h :nohlsearch<CR>
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
