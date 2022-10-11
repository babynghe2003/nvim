" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'joshdick/onedark.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'frazrepo/vim-rainbow'
    Plug 'sonph/onehalf'
call plug#end()

au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

colorscheme onedark
let g:airline_theme = 'onedark'

syntax on
set nospell
set mouse=a
set autoindent
set wrap
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

autocmd TextChanged,TextChangedI <buffer> silent write
set number
set clipboard=unnamedplus

set autowrite 

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

set hidden
 
set nobackup
set nowritebackup
let g:airline_powerline_fonts = 1
set guifont=MesloLGS\NF:s12

source $HOME/.config/nvim/vim-plug/settings/coc.vim
source $HOME/.config/nvim/vim-plug/cp.vim
source $HOME/.config/nvim/vim-plug/py.vim

let g:python3_host_prog="/usr/bin/python3"

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

 
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '|'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'




