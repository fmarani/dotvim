set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'klen/python-mode'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/csapprox'

Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'chrisgillis/vim-bootstrap3-snippets'
Plugin 'tomtom/tcomment_vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set expandtab                           " Expand tabs into space
set tabstop=8                           " Length of tab
set shiftwidth=4                        " indentation

set softtabstop=4
set autoindent

set undofile                " Save undo's after file closes
set undodir=~/.vim/undo/    " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set foldlevel=99

set t_Co=256
set encoding=utf-8

colorscheme fruity

let g:snips_author = "Federico Marani"

" Switch to alternate file
map <C-S-Left> :bprevious<cr>
map <C-S-Right> :bnext<cr>

" fugitive status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" always display statusbar
set laststatus=2

let g:pymode_lint_ignore = "E501"

" CtrlP
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:top,min:1,max:20'

set wildignore+=*.pyc,*.hi,*.o

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(migrations|node_modules)$',
  \ }

" airline
let g:airline_theme = 'powerlineish'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
"let g:airline_branch_prefix = '<'
"let g:airline_readonly_symbol = '<'
"let g:airline_linecolumn_prefix = '<'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '>'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '<'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1
