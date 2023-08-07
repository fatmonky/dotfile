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
set listchars=tab:>-

"Ignore capital letters during search"
set ignorecase

"While searching file incrementally highlight matching characters"
set incsearch

"Show mode on last line"
set showmode

"Do not let cursor scroll below or above N number of lines when scrolling"
set scrolloff=10

"mappings to move chunks of lines up or down with Ctrl-j & Ctrl -k"
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv
