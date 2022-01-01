syntax enable

colorscheme atom-dark-256

set backspace=indent,eol,start
set rnu
set number

let mapleader = ','

set splitbelow
set splitright


"--------Visuals--------

"--------Searching------

set hlsearch
set incsearch

"--------Mappings-------

nmap <Leader>ev :tabe ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

"--------Autocommands---

augroup Autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
