" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Turn syntax highlighting on.
syntax on

" Display line numbers.
set number

" Always display status bar
set laststatus=2

" Save all temporary files in ~/.vim
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
