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

" Prevent annoying flashes and beeps
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

" Enable report message for all actions
set report=0

" Always show current file, ruler, mode, etc...
set laststatus=2

" Highlight all matches of a search phrase
set hlsearch

" Search incrementally and case insensitively (unless explicit capital letter)
set ignorecase
set smartcase
set incsearch

" Indent according to filetype / language syntax
set autoindent " this is safe to use with filetype based indenting
filetype plugin indent on

" Allow backspace key to work as one would expect in the 21st century
set backspace=indent,eol,start " now can backspace multiple lines

" Allow pressing tab to autocomplete vim commands
set wildmenu
set wildmode=longest:full,full

" Allow mouse copy to ignore line numbers
set mouse=a

" Allow mouse leftdrag / rightclick / middleclick to behave like a GUI
set mousemodel=popup_setpos

" Make mouse show as I-beam everywhere, since everything is text
set mouseshape=a:beam

" Show a rule at the end of the &textwidth
set colorcolumn=+1

" Allow collapsible regions
set foldmethod=marker

" Allow files to define custom rule to be edited by
set modeline
set modelines=5

" Wrap lines that span past the terminal window
set wrap
set linebreak
set nolist

" Enable spell checking (but ignore capitalization errors)
set spell
set spelllang=en_nz
set spellcapcheck=""

" Allow colours to work correctly, regardless of terminal
syntax on
set t_Co=256
set t_ut=""
set termguicolors
set background=dark

" Disable parenthesis matching highlight, as it is is extremely annoying
let g:loaded_matchparen = 1

" Show tabs as special character, NOTE: listchars has a trailing space
set list
set listchars=tab:\|\ 
match Comment /\t/

