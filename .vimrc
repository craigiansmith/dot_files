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
nmap <Leader>tj :!npm run test:unit<cr>
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"--------Autocommands---

augroup Autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
