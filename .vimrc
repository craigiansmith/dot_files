syntax enable

colorscheme atom-dark-256

set backspace=indent,eol,start
set rnu
set number

let mapleader = ','

set splitbelow
set splitright


"--------Visuals--------

"--------Linting--------
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ }

let g:ale_php_phpcs_executable = '/home/craig/Documents/Prophecy/fund-api/run-phpcs-in-docker.sh'

"--------Testing--------
"let test#strategy = 'dispatch'
nmap <Leader>tpf :!docker exec -t fund-api vendor/bin/phpunit<CR>
nmap <Leader>tpi :!docker exec -t integration vendor/bin/phpunit<CR>

let test#php#phpunit#executable = 'docker exec -t fund-api vendor/bin/phpunit'

"--------Searching------

set hlsearch
set incsearch

let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

"--------Mappings-------

nmap <Leader>ev :tabe ~/.vim/vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>tj :!npm run test:unit<cr>
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>r :Grepper -tool rg<CR>
nnoremap <Leader>G :Grepper <CR>

nmap <Leader>ts :TestSuite<CR>
nmap <Leader>tf :TestFile<CR>
nmap <Leader>tn :TestNearest<CR>
nmap <Leader>tl :TestLast<CR>

nmap <Leader>s :source ~/.vim/vimrc<CR>

"--------Abbreviations--
cabbrev grep GrepperRg

"--------Functions------
"function! SetupCommandAlias(input, output)
"	exec 'cabbrev <expr> '.a:input
"				\ .' ((getcmdtype() is# ":" && getcmdline() is # "'.a:input.'")'
"				\ . '? ("'.a:output.'") : ("'.a:input.'"))'
"endfunction

"call SetupCommandAlias("grep", "GrepperGrep")

"--------Autocommands---

augroup Autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
