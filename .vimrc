execute pathogen#infect()
syntax on
set cursorline
set modeline
highlight cursorline NONE ctermbg=blue
let g:netrw_listestyle=3
set statusline=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nospell
set fileformat=unix
set number
set ruler
set noexpandtab
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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


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

colorscheme koehler
"autocmd vimenter * NERDTree
"autocmd vimenter * i" !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

scriptencoding=utf-8
set encoding=utf-8
"set listchars="tab:⮀   ,trail:¬"
set listchars=tab:>-,trail:¬
set listchars+=tab:_·
set listchars+=tab:__
set listchars+=tab:⁀⁀
set listchars+=tab:⮀⮀
set listchars+=tab:░░

			"set listchars=tab:\u00B7,trail:¬
"set listchars="eol:\u00b6,tab:|,trail:\u2022,extends:\u00bb,precedes:\u00ab,nbsp:\u00d7" 




"setlocal list  
"setlocal listchars-=tab:⮀⮀,trail:¬
"set list

let mapleader = ","  


nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>C :chdir ~/git/connectui/connectui/src<CR>:NERDTreeCWD<CR>BO
nmap <leader>S :chdir ~/git/safeconnect/safeconnect/src<CR>:NERDTreeCWD<CR>BO
nmap <leader>N :chdir ~/git/node-docker-poc<CR>:NERDTreeCWD<CR>BO


nmap <leader>v :n ~/.vimrc<CR>
nmap <leader>z :w<CR>:source ~/.vimrc<CR>
"nmap <leader>f :set guifont=*<CR>
nmap <leader>q :set guifont=Terminus\ 8<CR>
nmap <leader>w :set guifont=Terminus\ 10<CR>
nmap <leader>e :set guifont=Terminus\ 12<CR>
nmap <leader>r :set guifont=Terminus\ 14<CR>
nmap <leader>t :set guifont=Terminus\ 16<CR>
nmap <leader>y :set guifont=Terminus\ 18<CR>
nmap <leader>u :set guifont=Terminus\ 24<CR>

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
  "set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  "let g:ctrlp_user_command = '/home/tbailey-jones/git/ -t -U -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ctrlp_custom_ignore = {
     \'dir':  '\v[\/](target\|\.git|\.hg|\.svn)$',
     \'file': '\v\(exe|so|dll|class|jar|war)$',
     \'link': 'SOME_BAD_SYMBOLIC_LINKS',
 \}
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.jar,*.war,target/*,.git/*,.gif,.jpg,.jpeg,.png,.GIF,.JPG,.JPEG,.PNG,
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
set runtimepath^=~/vim/buncle/ctrlp.vim
