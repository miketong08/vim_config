call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'JamshedVesuna/vim-markdown-preview'
call plug#end()

syntax on
colo focuspoint
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

set clipboard=unnamed
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set number
set relativenumber 
syntax on

set foldlevel=99
autocmd BufNewFile,BufReadPost *.py set foldmethod=indent
autocmd BufNewFile,BufReadPost COMMIT_EDITMSG set spell

nnoremap <space> za
nnoremap go :Goyo 120<cr>:set number relativenumber<cr>

"For markdown preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

" Whitespace removal
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
