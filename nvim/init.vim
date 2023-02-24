set termguicolors

syntax on
filetype plugin on

set number relativenumber
" Whitespace
set ts=2 sw=2 softtabstop=2 expandtab noshiftround

set encoding=utf-8
set nowrap

" Cursor
set matchpairs+=<:>
set backspace=indent,eol,start
set scrolloff=3
set mouse+=a

set hidden
set laststatus=2

" `set hlsearch` will also highlight the searches
set incsearch smartcase ignorecase showmatch
set nohlsearch

if !has('gui_running')
  " set t_Co=256
endif

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Using Ctrl-6 to switch bufs
nnoremap <C-6> <C-^>

" Plugins
call plug#begin()
  " File search and dir tree viewing
  Plug 'preservim/NERDTree'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
  " The following 3 packages are really just dependencies of telescope.nvim.
  " NOTE: It is also recommended to have ripgrep installed.
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " COC!
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

  " comments
  Plug 'preservim/nerdcommenter'

  " Themes and eyecandy
  "
  Plug 'itchyny/lightline.vim'
  Plug 'srijan-paul/vim-257noir'
  Plug 'romainl/flattened'
  Plug 'morhetz/gruvbox'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'rakr/vim-one'
  Plug 'ryanoasis/vim-devicons'
  Plug 'othree/jsdoc-syntax.vim'
  Plug 'dracula/vim'
  Plug 'sainnhe/sonokai'
  Plug 'ntk148v/komau.vim' " Vim-plug
call plug#end()


" Unfortunately, I have to restart lightline every time I change
" the colorscheme. 
" Reference: https://github.com/itchyny/lightline.vim/issues/241
function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

command! LightlineReload call LightlineReload()

" Set a lightline theme and reload lightline
" for the changes to take place immediately.
function LightlineSetTheme(theme_name)
  let g:lightline.colorscheme = a:theme_name
  call LightlineReload()
endfunction

command! -nargs=1 LightlineTheme :call LightlineSetTheme(<q-args>)


" Quickly switch from one 'theme' to another using short theme names
" This is useful because unlike the 'colo' command, it changes both
" the colorscheme and the lightline theme, and uses much shorter names for
" the themes (that only I remember :D)
function! SwitchTheme(theme_name)
  if a:theme_name == "sol"
    :execute "colo flattened_dark"
    :execute "LightlineTheme solarized"
  elseif a:theme_name == "sel"
    :execute "colo flattened_dark"
    :execute "let g:lightline.colorscheme='solarized'"
  elseif a:theme_name == "257"
    :execute "colo 257_noir"
    :execute "let g:lightline.colorscheme='wombat'"
  elseif a:theme_name == "gruv"
    :execute "colo gruvbox"
    :execute "LightlineTheme gruvbox"
  elseif a:theme_name == "paper"
    :execute "colo papercolor"
    :execute "LightlineTheme PaperColor"
  elseif a:theme_name == "one"
    :execute "colo one"
    :execute "LightlineTheme one"
  elseif a:theme_name == "dracula"
    :execute "colo dracula"
    :execute "LightlineTheme dracula"
  elseif a:theme_name == "sonokai"
    :execute "colo sonokai"
    :execute "LightlineTheme sonokai"
  elseif a:theme_name == "komau"
    :execute "colo komau"
    :execute "LightlineTheme wombat"
  endif

  call LightlineReload()
endfunction

:command! -nargs=1 Theme :call SwitchTheme(<q-args>)

set guifont=Overpass\ NF:h17'
set background=dark
let g:sonokai_style = 'maia'
let g:lightline = {
      \ 'colorscheme' : 'sonokai',
      \ }

colorscheme sonokai 

" Custom keybindings
nnoremap gd :call CocAction('jumpDefinition')<cr>
nnoremap gr :call CocAction('jumpReferences')<cr>
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>

" Use K to show documentation in preview window
nnoremap <silent> M :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" NEDTree config
" Taken from: https://github.com/preservim/nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"" coc-nvim autocomplete selection
"" Used by coc.nvim for trigger completion
function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<Tab>" : coc#refresh()
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : CheckBackspace() ? "\<S-Tab>" : coc#refresh()
inoremap <silent> <expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

" Start NERDTree when Vim is started without file arguments.
autocmd VimEnter * NERDTree 
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" NERDCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
let g:NERDTrimTrailingWhitespace = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
