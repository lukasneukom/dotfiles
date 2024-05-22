" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Turn syntax highlighting on.
syntax on

" Display line numbers.
set number

" Always display status bar
set laststatus=2
set ruler

" Move across newlines with arrow keys
set whichwrap+=<,>,[,]

" Highlight search matches
set hlsearch

" Search incrementally
set incsearch

" Command completion
set wildmenu

" Save all temporary files in ~/.vim
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//

" Format Git commit messages
set textwidth=80
set colorcolumn=+1
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn+=51
autocmd FileType markdown set textwidth=0
