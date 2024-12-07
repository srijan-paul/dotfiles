"set termguicolors

syntax on
filetype plugin on


set number relativenumber
" Whitespace
set noshiftround

set encoding=utf-8
set nowrap

" remap leader key to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" Cursor
set matchpairs+=<:>
set backspace=indent,eol,start
set scrolloff=3
set mouse+=a

set hidden
set laststatus=2
set cursorline

" `set hlsearch` will also highlight the searches
set incsearch smartcase ignorecase showmatch
set nohlsearch

if !has('gui_running')
  set t_Co=256
endif

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Using Ctrl-6 to switch bufs
nnoremap <C-6> <C-^>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
  " formatting
  " Plug 'sdiehl/vim-ormolu'

  " Themes and eyecandy
  "
  Plug 'srijan-paul/vim-257noir'
  Plug 'romainl/flattened'
  Plug 'morhetz/gruvbox'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'othree/jsdoc-syntax.vim'
  Plug 'fcpg/vim-farout'
  Plug 'srcery-colors/srcery-vim'
call plug#end()

set background=dark
let g:sonokai_style = 'maia'

