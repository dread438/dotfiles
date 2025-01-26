set clipboard+=unnamedplus
set number
set relativenumber
set nohlsearch
set wildmode=longest,list,full
set encoding=utf-8
set splitbelow splitright
set noruler
set noshowmode
set laststatus=0
set noshowcmd
filetype plugin on
syntax on
let g:netrw_banner=0
let g:netrw_sort_by='name'
" Use "automatic" behavior for commands like gf, ]f, and [f (which are used to jump to files and handle file navigation).
set go=a
set linebreak
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Save file as sudo on files that require root permission
cabbrev w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme moonfly

"""KEYBINDINGS"""
let mapleader = ","
nmap j gj
nmap k gk
map <leader>o :setlocal spell! spelllang=en_us<CR>
" Perform dot commands over visual blocks:
vnoremap . :normal .<CR>
nnoremap <leader>e :Lexplore<CR>
" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <leader>s :!clear && shellcheck -x %<C

"""vim-airline"""
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.colnr = ' C:'
let g:airline_symbols.linenr = ' L:'
let g:airline_symbols.maxlinenr = ''

