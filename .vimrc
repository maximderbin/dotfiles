" be iMproved
set nocompatible

" Vundle setup
" Plugin manager
"
" Brief help:
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-ap prove) removal of unused bundles
" for more details see :h vundle  or https://github.com/gmarik/vundle
    filetype off     " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'git://github.com/gmarik/vundle.git'

    " Bundles
    " NOTE: comments after Bundle command are not allowed...
    " Libs
        " For FuzzyFinder
        Bundle 'L9'
        " For Vim Snipmate
        Bundle 'MarcWeber/vim-addon-mw-utils'
    " Interface
        " Solarized Colorscheme
        Bundle 'git://github.com/altercation/vim-colors-solarized.git'
        " Buffer/file/command/tag/etc explorer with fuzzy matching
        Bundle 'git://github.com/slack/vim-fuzzyfinder.git'
        " TextMate-like snippets
        Bundle 'git://github.com/garbas/vim-snipmate'
        Bundle 'git://github.com/babybeasimple/vim-snippets'
        " Provides easy code commenting
        Bundle 'git://github.com/tomtom/tcomment_vim'
        " Mappings to easily delete, change and add surroundings in pairs
        Bundle 'git://github.com/tpope/vim-surround.git'
        " Automatic closing of quotes, parenthesis, brackets, etc.
        Bundle 'git://github.com/vim-scripts/delimitMate.vim.git'
        " Syntax checking hacks
        Bundle 'git://github.com/scrooloose/syntastic.git'
        " Pairs of handy bracket mappings
        Bundle 'git://github.com/tpope/vim-unimpaired'
        " Enable repeating supported plugin maps with "."
        Bundle 'git://github.com/tpope/vim-repeat'
        " Makes it easy to align regions of text that match a pattern
        Bundle 'git://github.com/godlygeek/tabular'
        " Git wrapper
        Bundle 'git://github.com/tpope/vim-fugitive.git'
    " HTML/HAML
        " Runtime files for Haml and Sass
        Bundle 'git://github.com/tpope/vim-haml.git'
    " CSS/LESS
        " CSS3 syntax support
        Bundle 'git://github.com/hail2u/vim-css3-syntax.git'
        " Highlight colors in css files
        Bundle 'git://github.com/ap/vim-css-color.git'
    " JavaScript
        " Vastly improved vim's javascript indentation
        Bundle 'git://github.com/pangloss/vim-javascript.git'
        " CoffeeScript support
        Bundle 'git://github.com/kchmck/vim-coffee-script.git'
    " Ruby/Rails
        " RVM support
        Bundle 'git://github.com/tpope/vim-rvm'
        " Rails support
        Bundle 'git://github.com/tpope/vim-rails.git'
        " Wisely add "end" in ruby, endfunction/endif/more
        Bundle 'git://github.com/tpope/vim-endwise.git'

    filetype plugin indent on     " required!

" Add recently accessed projects menu (project plugin)
set viminfo^=!

syntax enable
syntax on

set lazyredraw
set showmode
set wildmenu
set wildignore+=vendor/ruby/*,.git,tmp/*,public/system/*

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

if has('mac')
  set gfn=menlo:h14
else
  set gfn=mono\ 11
endif

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

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

set synmaxcol=2048

set cpoptions+=$
set hlsearch
set ignorecase
set wrap

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчняж;abcdefghijklmnopqrstuvwxyz;

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{fugitive#statusline()}%{exists('g:loaded_rvm')?rvm#statusline():''}%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-16(\ %l,%c-%v\ %)%P

hi PreProc guifg=red ctermfg=red guibg=grey15
au BufRead,BufNewFile *.hamlc setf haml
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.rabl syn keyword rubyRabl node attribute object child collection attributes glue extends
au BufRead,BufNewFile *.rabl hi def link rubyRabl Function
au BufRead,BufNewFile *.thor setf ruby

" Plugins

    " Solarized
        syntax enable
        " http://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized#comment11144700_7278548
        let g:solarized_termcolors=16
        set background=dark
        try
            colorscheme solarized
        catch /^Vim\%((\a\+)\)\=:E185/
            echo "Solarized theme not found. Run :BundleInstall"
        endtry

        try
            call togglebg#map("<Leader>b")
        catch /^Vim\%((\a\+)\)\=:E117/
            " :(
        endtry

    " FuzzyFinder
        nmap ,f :FufFileWithCurrentBufferDir<CR>
        nmap ,b :FufBuffer<CR>
        nmap ,t :FufTaggedFile<CR>

        let g:tlist_coffee_settings = 'coffee;f:function;v:variable'

" Shortcuts
    " Disable <Arrow keys>
        " Warning: nightmare mode!
        inoremap <Up> <NOP>
        inoremap <Down> <NOP>
        inoremap <Left> <NOP>
        inoremap <Right> <NOP>
        noremap <Up> <NOP>
        noremap <Down> <NOP>
        noremap <Left> <NOP>
        noremap <Right> <NOP>
        " Navigate with <Ctrl>-hjkl in Insert mode
        imap <C-h> <C-o>h
        imap <C-j> <C-o>j
        imap <C-k> <C-o>k
        imap <C-l> <C-o>l
