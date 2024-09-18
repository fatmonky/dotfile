"Disable compatibility with vi, which can cause unexpected issues.
set nocompatible

"Enable type file detection.
filetype on

"Enable plugins and load plugin for detected file type
filetype plugin on

"Load an indent file for detected file type
filetype indent on

"Turn syntax highlighting on
syntax on

"Add numbers to each line on left-hand-side
set number

"Highlight cursor line underneath the cursor horizontally, then vertically
set cursorline
set cursorcolumn

"Set tab width to 2 columns.
set tabstop=4
set shiftwidth=4

"use actual tab chars instead of spaces
set noexpandtab
set list
set listchars=tab:>_

"Ignore capital letters during search"
set ignorecase

"While searching file incrementally highlight matching characters"
set incsearch

"Show mode on last line"
set showmode

"Do not let cursor scroll below or above N number of lines when scrolling"
set scrolloff=10

"Allow mouse scroll
set mouse=a

" set colorscheme
"colorscheme habamax #habamax is already installed
autocmd vimenter * ++nested colorscheme gruvbox

"mappings to move chunks of lines up or down with Ctrl-j & Ctrl -k"
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

"setting 42 user and mail id
let g:user42= 'pteh'
let g:mail42 = 'pteh@student.42.fr'


"PLUGINS  ---------------------------------------------------------{{{{
call plug#begin('~/.vim/plugged')

	Plug '42Paris/42header'
	Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
"	Plug 'dense-analysis/ale'
	Plug 'fatih/vim-go'
	Plug 'Valloric/YouCompleteMe'
	Plug 'junegunn/fzf'

call plug#end()

"  }}}

" STATUS LINE -----------------------------------------------------{{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" }}}

" Remap NERDTree toggle
map <C-t> :NERDTreeToggle<CR>

" Open NERDTree automatically when vim starts
autocmd vimenter * NERDTree | wincmd p

" Configure tree settings
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 0
let g:NERDTreeNodeDelimiter = "\u00a0"

" Close vim if NERDTree is the only remaining window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Define NERDTree ignore
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']


