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

set mouse=a

colorscheme solarized
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let mapleader = ","

nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>q :q<CR>

nnoremap <leader>l $
nnoremap <leader>h ^

inoremap <leader>, <C-x><C-o>

highlight GitGutterAdd ctermfg=White
highlight GitGutterDelete ctermfg=White
highlight GitGutterChange ctermfg=White

highlight GitGutterAdd ctermbg=Green
highlight GitGutterDelete ctermbg=Red
highlight GitGutterChange ctermbg=Yellow

