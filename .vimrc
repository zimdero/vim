call plug#begin('~/.vim/plugged')

"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'
Plug 'mhinz/vim-signify'
Plug 'moll/vim-node'
Plug 'heavenshell/vim-jsdoc'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'tpope/vim-surround'
Plug 'mgedmin/python-imports.vim'
Plug 'dracula/vim',{'as':'dracula'}

" Initialize plugin system
call plug#end()

nnoremap <silent> <tab> :!clear;python3 %<CR>

" Import for python
map <F5> :ImportName<CR>

" set tags
set tags=./tags,tags;$HOME
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" set paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Airline sett
set noshowmode
set noruler
set noshowcmd
set laststatus=2


" Let's save undo info!
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
set undolevels=1000
set undoreload=10000


if has('persistend_undo')
  set undofile
  set undodir=$HOME/.vim/undo
endif

let g:ycm_global_ycm_extra_conf = '~./vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


" tsuquyomi settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_single_quote_import = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
nmap <F7> :TsuImport<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree 
"let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeQuitOnOpen = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeWinSize = 40

" Open nerdtree automaticlly when vim starts up when open in directory
"autocmd vimenter * NERDTree
" If open folder open with Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Ctrlp ignore
let g:ctrlp_custom_ignore = '\v[\/](images|font|node_modules|target|dist|venv|plugins|platforms|resources)|(\.(swp|ico|git|svn|pyc|svg|jpg|jpeg|png|gif))$'
"let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_max_height = 30

let g:mapleader=','
" Buffer switch
map <Leader>a :bn<Return>
map <Leader>z :bp<Return>
map <Leader>l :ls<Return>
map <Leader>d :bd<Return>

" Line number
set number
set relativenumber

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set shiftround

set t_Co=256
"dracula theme
syntax on
color dracula
set termguicolors

set cursorline
set hlsearch
set incsearch
set ignorecase

" Keep more content at the bottom of the buffer
set scrolloff=5

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

imap <C-C> <ESC>
nmap <C-X> :w<CR>
map <C-W> :q<CR>

" Clear hightlights on hitting th SPACE
nnoremap <SPACE> :noh<return><esc>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>


function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if(match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction    

"Отключение стрелок
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>


"if you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif"

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal and rxvt up to
    version 9.21
endif
