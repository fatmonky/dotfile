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
set tabstop=2
