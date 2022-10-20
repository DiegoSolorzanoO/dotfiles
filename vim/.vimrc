" SETTERS ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Syntax highlight
syntax on

" Adds numbers to each line
set number

" Sets relative numbers
set relativenumber

" Set shift width to x spaces
set shiftwidth=4

" Set tab width to x columns
set tabstop=4

" Use characters instead of tabs
set expandtab

" Do not save backup files
set nobackup

" Do not let cursor scroll below or above x number of lines when scrolling
set scrolloff=10

" Do not wrap lines
set nowrap

" While searching through a file incrementaly highlight matching characters as you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Override the ignore if searching for capital letters
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set showmatch

" Disable the use of a swap file
set noswapfile

" Set the commands to save in history default is 10
set history=50

" Enable auto completion menu after pressing TAB
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" Wildmenu will ignore this files
set wildignore+=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*/node_modules/*

" Set cursor behavior
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20

" }}}

" MAPPINGS ---------------------------------------------------------------- {{{

let mapleader=" "

inoremap jk <Esc>
xnoremap("<leader>p", "\"_dP")

" Easy split screen
nnoremap <leader>sv :vsplit<CR><c-w>l
nnoremap <leader>sh :split<CR><c-w>j

" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Select all
nnoremap <c-a> gg<s-v>G

" }}}

" VIMSCRIPT ---------------------------------------------------------------- {{{

filetype plugin on

" This enables code folding
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}
