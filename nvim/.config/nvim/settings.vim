" Use system clipboard
set clipboard+=unnamedplus

setf dosini
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set number
set autoindent
set nocompatible
set number relativenumber
set ignorecase
set smartcase
set encoding=utf-8

" Enable autocompletion:
set wildmode=longest,list,full

" Leader key to be space
let mapleader = ' '

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Autoload some file
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Link these extensions to their respective files(for coc-nvim)
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.py setlocal filetype=python