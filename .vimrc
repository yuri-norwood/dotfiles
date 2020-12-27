"
" Vimrc - Vim Editor Configs
"
" Author:  Yuri Norwood
" See:     https://github/yuri-norwood/dotfiles
"

" Allow bells and whistles
set nocompatible

" Allow special characters and symbols
set encoding=utf-8 " do this before :scriptencoding
scriptencoding utf-8

" Prevent anoying flashes and beeps
set belloff=all

" Show commands while being typed
set showcmd

" Define preferred line width
set textwidth=80

" Define gutter size
set numberwidth=5

" Show line numbers but only if there's room
if &columns < (&textwidth + &numberwidth)
	set nonumber
else
	set number
endif

