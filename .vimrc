execute pathogen#infect()
syntax on
set number
set ruler
set expandtab
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set spell
set background=dark
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:airline_theme = 'airlineish'

filetype plugin on
filetype indent plugin on

colorscheme solarized
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let mapleader = ","
nmap <leader>t :NERDTree<CR>
nmap <leader>q :q<CR>
