let mapleader = ","



set nowrap
set tabstop=4
set softtabstop=4
set expandtab
set encoding=utf-8
set ruler
set showmode
set showcmd
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set relativenumber
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch
set nobackup
set noswapfile
set nocompatible
set modelines=0
set colorcolumn=90
set cmdheight=2
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
set linespace=1
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set title

nmap <Space> :
imap <leader>a <Esc>
imap <leader>w <Esc><leader>w
nmap <leader>w :w<CR>
imap <leader>q <Esc><leader>q
nmap <leader>q :q<CR>

nmap <silent> <leader>ev :e ~/.vim/vimrc<CR>
nmap <silent> <leader>sv :so ~/.vim/vimrc<CR>

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
inoremap jj <ESC>

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without adding it to the
" yanked stack (also, in visual mode)
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d


" au FocusLost * :wa



if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif



call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
