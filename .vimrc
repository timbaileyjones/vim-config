execute pathogen#infect()
syntax on
set cursorline
highlight cursorline NONE ctermbg=blue
set fileformat=unix
set number
set ruler
set expandtab
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set background=dark
set nospell
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:airline_theme = 'airlineish'

filetype plugin on
filetype indent plugin on
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = [ "<style> isn't allowed in <div> elemnt" ]
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225,E901'

let g:syntastic_quiet_message = { "type": "style" }
"let g:syntastic_quiet_message = { }


set mouse=a

colorscheme slate
"autocmd vimenter * NERDTree
"autocmd vimenter * i" !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set listchars=tab:>-,trail:¬
set list

let mapleader = ","

nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>q :qa<CR>
nmap <leader>e :tabedit %<CR>
nmap <leader>c :chdir ~/git/connectui/connectui/src<CR>

nnoremap <leader>l $
nnoremap <leader>h ^

inoremap <leader>, <C-x><C-o>

highlight GitGutterAdd ctermfg=White
highlight GitGutterDelete ctermfg=White
highlight GitGutterChange ctermfg=White

highlight GitGutterAdd ctermbg=Green
highlight GitGutterDelete ctermbg=Red
highlight GitGutterChange ctermbg=Yellow

" Add this line if terminal doesn't support utf for NerdTree
" let g:NERDTreeDirArrows=0
"
:vmap ,x :!tidy -q -i --show-errors 0<CR>

" The Silver Searcher - https://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
