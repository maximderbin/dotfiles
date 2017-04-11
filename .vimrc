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
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#rc()
    Bundle 'git://github.com/gmarik/vundle.git'

    " Bundles
    " NOTE: comments after Bundle command are not allowed...
    " Libs
        " For FuzzyFinder
        Bundle 'L9'
        " For Vim Snipmate
        Bundle 'git://github.com/MarcWeber/vim-addon-mw-utils'
        Bundle 'git://github.com/tomtom/tlib_vim'
    " Style
        " Editor Config
        Bundle 'git://github.com/editorconfig/editorconfig-vim'
    " Interface
        " Solarized Colorscheme
        Bundle 'git://github.com/altercation/vim-colors-solarized.git'
        " Status line
        Bundle 'git://github.com/bling/vim-airline.git'
        Bundle 'git://github.com/vim-airline/vim-airline-themes.git'
        " A tree explorer plugin
        Bundle 'git://github.com/scrooloose/nerdtree.git'
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
        Bundle 'git://github.com/mtscout6/syntastic-local-eslint.vim.git'
        " Pairs of handy bracket mappings
        Bundle 'git://github.com/tpope/vim-unimpaired'
        " Enable repeating supported plugin maps with "."
        Bundle 'git://github.com/tpope/vim-repeat'
        " Makes it easy to align regions of text that match a pattern
        Bundle 'git://github.com/godlygeek/tabular'
        " Git wrapper
        Bundle 'git://github.com/tpope/vim-fugitive.git'
        " Ag wrapper
        Bundle 'git://github.com/rking/ag.vim.git'
    " CSV
        " CSV support
        Bundle 'git://github.com/chrisbra/csv.vim.git'
    " CSS
        " CSS3 syntax support
        Bundle 'git://github.com/hail2u/vim-css3-syntax.git'
        " Highlight colors in css files
        Bundle 'git://github.com/ap/vim-css-color.git'
    " JavaScript
        " Vastly improved vim's javascript indentation
        Bundle 'git://github.com/pangloss/vim-javascript.git'
        " React
        Bundle 'git://github.com/mxw/vim-jsx.git'
        " beautify
        Bundle 'git://github.com/maksimr/vim-jsbeautify.git'
    " Ruby/Rails
        " Wisely add "end" in ruby, endfunction/endif/more
        Bundle 'git://github.com/tpope/vim-endwise.git'

    filetype plugin indent on     " required!

" Environment
    " Store lots of history entries: :cmdline and search patterns
    set history=1000
    " Backspacing settings
        " start     allow backspacing over the start of insert;
        "           CTRL-W and CTRL-U stop once at the start of insert.
        " indent    allow backspacing over autoindent
        " eol       allow backspacing over line breaks (join lines)
        set backspace=indent,eol,start
    " Backup и swp files
        " Don't create backups
        set nobackup
        " Don't create swap files
        set noswapfile
    " AutoReload .vimrc
    " See http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
    " Source the vimrc file after saving it
        if has("autocmd")
          autocmd! bufwritepost .vimrc source $MYVIMRC
        endif

" Interface
    " Font
    if has('mac')
      set gfn=menlo:h14
    else
      set gfn=mono\ 11
    endif
    " Removes top toolbar
    set guioptions-=T
     " Removes right hand scroll bar
    set guioptions-=r
    " Removes left hand scroll bar
    set go-=L
    " Show line numbers
    set number
    " Show matching brackets
    set showmatch
    " Bracket blinking
    set mat=5
    " Enhance command-line completion
    " Only available when compiled with the +wildmenu feature
        set wildmenu
        " OS X
        set wildignore+=*.DS_Store
        " Version control
        set wildignore+=.hg,.git,.svn
        " Ruby on rails
        set wildignore+=vendor/ruby/*,tmp/*,public/system/*
    " Minimal number of lines to keep above and below the cursor
    " Typewriter mode = keep current line in the center
    set scrolloff=999
    " Display invisible characters
        set list
        " Show $ at end of line and trailing space as ~
        set lcs=tab:\ \ ,trail:~,extends:>,precedes:<
    " Wrap long lines
    set wrap
    " Don't break words when wrapping
    " Only available when compiled with the +linebreak feature
    set linebreak
    " Show ↪ at the beginning of wrapped lines
    if has("linebreak")
      let &sbr = nr2char(8618).' '
    endif
    " Time to wait after ESC (default causes an annoying delay)
    set timeoutlen=250
    " No beeps, no flashes
    set visualbell
    " Copy indent from current line when starting a new line
    set autoindent
    " Do smart indenting when starting a new line
    " Only available when compiled with the +smartindent feature
    set smartindent
    " Number of spaces to use for each step of (auto)indent
    set shiftwidth=2
    " Use spaces instead of tab
    set expandtab
    " Number of spaces that a tab counts for
    set tabstop=2
    " Last window always has a status line
    set laststatus=2
    " Highlight the screen vertical line of the cursor
    set cursorcolumn

" Search
    " While typing a search command, show pattern matches as it is typed
    " Only available when compiled with the +extra_search feature
    set incsearch
    " When there is a previous search pattern, highlight all its matches
    " Only available when compiled with the +extra_search feature
    set hlsearch
    " Ignore case in search patterns
    set ignorecase
    " Override the 'ignorecase' if the search pattern contains upper case characters
    set smartcase
    " All matches in a line are substituted instead of one
    set gdefault

" Plugins
    " Solarized
        syntax enable
        " http://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized#comment11144700_7278548
        let g:solarized_termtrans=1
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
    " Airline
        " Colorscheme
        let g:airline_theme='solarized'
        " Syntastic integration
        let g:airline#extensions#syntastic#enabled=1
    " Syntastic
        let g:syntastic_javascript_checkers=['eslint']
    " NERDTree
        noremap <silent> <C-e> :NERDTreeToggle<CR>:silent NERDTreeMirror<CR>
        map <silent> <C-d> :1<CR>X
        " let NERDTreeShowBookmarks=1
        let NERDTreeChDirMode=2
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=0
        " Disable display of the 'Bookmarks' label and 'Press ? for help' text
        let NERDTreeMinimalUI=1
        " Use arrows instead of + ~ chars when displaying directories
        let NERDTreeDirArrows=1
        " let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'
    " FuzzyFinder
        nmap ,f :FufFileWithCurrentBufferDir<CR>
        nmap ,b :FufBuffer<CR>
        nmap ,t :FufTaggedFile<CR>
        let g:tlist_coffee_settings = 'coffee;f:function;v:variable'
    " Ag
        let g:ag_working_path_mode='r'

" Shortcuts
    " Disable mouse
        set mouse=
    " Remap ESC to jj
        imap jj <Esc>
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
    " Navigate through wrapped lines
        noremap j gj
        noremap k gk
    " <Esc><Esc>
        " Clear the search highlight in Normal mode
        nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>
    " Beautify
        autocmd FileType javascript noremap <buffer>  <c-f> :call EslintFix()<cr>
    " Allow pasting blocks of code without indenting
        set pastetoggle=<F2>

" Functiuons
function! EslintFix()
  " Save current cursor position "
  let l:winview = winsaveview()
  " run eslint fix on current buffer "
  ! /Users/mderbin/code/inops/inDB/ui/node_modules/.bin/eslint --fix %
  " Restore cursor position "
  call winrestview(l:winview)
endfunction

" Some mess
    set lazyredraw
    set showmode

    set cf  " Enable error files & error jumping.
    set clipboard+=unnamed  " Yanks go on clipboard instead.
    set autowrite  " Writes on make/shell commands
    set ruler  " Ruler on

    " Formatting (some of these are for coding in C and C++)
    set nocp incsearch
    set cinoptions=:0,p0,t0
    set cinwords=if,else,while,do,for,switch,case
    set formatoptions=tcqr
    set cindent

    set wrapscan
    set ch=2

    set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

    set synmaxcol=2048

    set cpoptions+=$

    hi PreProc guifg=red ctermfg=red guibg=grey15
