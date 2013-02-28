set nocompatible  " be iMproved

" Bundle
filetype off      " Required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-afterimage'
Bundle 'tomtom/tlib_vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'Raimondi/delimitMate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'pangloss/vim-javascript'
Bundle 'adie/BlockDiff'
Bundle 'csexton/rvm.vim'
Bundle 'godlygeek/tabular'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'skammer/vim-css-color'
Bundle 'bbommarito/vim-slim'
Bundle 'jinfield/vim-nginx'
Bundle 'digitaltoad/vim-jade'

let g:CommandTMaxFiles=100000

filetype plugin indent on " Required!

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Command-T options
let g:CommandTMaxFiles=20000

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

nmap <silent> <C-i> i<CR><Esc>
nmap <silent> <C-a> a<CR><Esc>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/routes.rb'

syntax enable
syntax on

"set hidden
set lazyredraw
set showmode
set wildmenu

nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

set gfn=mono\ 11
if has('mac')
  set gfn=menlo:h14
endif
colorscheme desert

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

set wrapscan
set ch=2

set timeoutlen=500
set history=100

set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set scrolloff=8
"set virtualedit=all

set synmaxcol=2048

set cpoptions+=$
set hlsearch
set ignorecase
set wrap

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчняж;abcdefghijklmnopqrstuvwxyz;

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{fugitive#statusline()}%{exists('g:loaded_rvm')?rvm#statusline():''}%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-16(\ %l,%c-%v\ %)%P

set wildignore+=vendor/ruby/*,.git,tmp/*,public/system/*

let g:ragtat_global_maps=1
let g:cssColorVimDoNotMessMyUpdatetime = 1

hi PreProc guifg=red ctermfg=red guibg=grey15
au BufRead,BufNewFile *.hamlc setf haml
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.rabl syn keyword rubyRabl node attribute object child collection attributes glue extends
au BufRead,BufNewFile *.rabl hi def link rubyRabl Function
au BufRead,BufNewFile *.thor setf ruby
" au BufRead,BufNewFile /etc/nginx/conf/* set ft=nginx
au BufRead,BufNewFile /etc/nginx/* set ft=nginx

" NERDTree autostart
if has('gui')
  autocmd VimEnter * NERDTree
  autocmd BufWinEnter * silent NERDTreeMirror
endif
