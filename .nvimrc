set nocompatible
set mouse=a
filetype on
filetype plugin on
filetype indent on

syntax on

" Show line numbers.
set number

" A sane tab width.
set tabstop=4

set expandtab
set showmode
set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.jpg,*.png,*.bin,*.webp
set spelllang=en_us

" Save custom spellings
set spellfile=$HOME/.vim/spell/en.utf-8.add
