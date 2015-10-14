""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" """"""""""""""""""""""""""""""""""""""""""""""""""""""
" " " Sets how many lines of history VIM has to remember
set history=70
"relative numbers
"set relativenumber
set wrap
set nocompatible
set title            " show title in console title bar"
set ttyfast          " smoother changes
set shellcmdflag=-ic " set shell command alias in !
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" continue where left off
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Check file change every 4 seconds ('CursorHold') and reload the buffer
" upon detecting change
set autoread
au CursorHold * checktime

" => Text, tab and indent related
" Be smart when using tabs
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4

"list of characters to highlight when displaying linebreaks
" set listchars=tab:˙»

" Line break on 500 characters
set lbr
set tw=500

set ai                          "Auto indent
set si                          "Smart indent
set wrap                        "Wrap lines

set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing

set expandtab                   " use spaces inseted of tabs
set showcmd                     " show command in bottom bar

set nocursorline                " dont highlight current line by defualt
set nocursorcolumn              " dont highlight cursorcolumn

syntax on
filetype plugin indent on       " load filetype-specific indent files

set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when we need to. Don't redraw while executing macros (good performance config)
set showmatch                   " highlight matching [{()}]
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matchesset hlsearch
"set foldenable                  " enable folding
"set foldlevelstart=10           " open most folds by default
"set foldnestmax=10              " 10 nested fold max

" set foldmarker={,}
" set foldmethod=marker
" set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
" set foldcolumn=4
" set foldlevelstart=1

"set foldmethod=syntax           " fold on basis of indent
"set foldlevel=1                 " level of folding
"set foldclose=all               " close all folds

set synmaxcol=2048              " Syntax coloring too-long lines is slow
                                " Complete like most shells – longest substring first, then iterate through
                                " full matches
set wildmode=longest:full,full  " Show partial commands in the last line of the screen
set showcmd
set noswapfile                  " don't keep swp files
"set nobackup                    " no backups

"" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" For regular expressions turn magic on
set magic

" How many tenths of a second to blink when matching brackets
set mat=2

"color slate
" define key bindings
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" set undodir=~/vimfiles/tmp/undo//     " undo files
" set backupdir=~/.vim/tmp/backup// " backups
" set directory=~/vimfiles/tmp/swap//   " swap files

" set nobackup

" open new split panes to right and bottom
set splitbelow
set splitright

" on press Space remove highlighting
nnoremap <leader><space> :nohlsearch<CR>

" toggle cursor line
nnoremap <leader>- :set cursorline!<CR> :hi CursorLine cterm=bold ctermbg=DarkGray ctermfg=Green<CR>
nnoremap <leader>_ :set cursorcolumn!<CR>

"toggle insert and normal mode
inoremap <leader>' <Esc>
nnoremap <leader>' i

" evaluate buffer vim fireplace
nnoremap <leader>e :!sql_login %<CR>
nnoremap <leader>so :so $MYVIMRC<CR>
nnoremap <leader>fw :FixWhitespace<CR>
nnoremap <leader>f :set nofoldenable<CR>
nnoremap <Home> ^
" manual autocomplte
" inoremap <leader>a <C-P>
"""""""""""""""""""""""""""""""""""""""""""
"       NORMAL MODE MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let mapleader="\\"
" Delete word backwords
nnoremap dq dbx
"delete from current pos till end
nnoremap Y y$
nnoremap y<TAB> y%
nnoremap D d$
nnoremap d<TAB> d%

"Leader mappings
" writes to disk and quits
nnoremap <leader><cr> :wq<CR>
" writes to file
nnoremap <leader>w :w<CR>
" quits
nnoremap <leader>q :q<CR>
" quits all buffers
nnoremap <leader>Q :qa<CR>
" next buffer
nnoremap <leader>] :bn<CR>
" prev buffer
nnoremap <leader>[ :bp<CR>
" list buffers
nnoremap <leader>l :ls<CR>
" open a shell alternate :  : VimShellTab / : VimShellCreate (same buffer creates a tab)
nnoremap <leader>$ :!sh<CR>

" insert mode mappings
inoremap <leader><cr> <Esc>:wq<CR> " writes to disk and quits
inoremap <leader>w <Esc>:w<CR>     " writes to file
inoremap <leader>q <Esc>:q<CR>     " quits

"nnoremap <leader><leader> <C-P>
"whitespace highlight
nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
nnoremap <Leader>wf :match<CR>
nnoremap <Leader>sp :set spell<CR>
nnoremap <Leader>nsp :set nospell<CR>

" show line breaks
nmap <silent> <leader>lb :set nolist!<CR>

"alternate colorscheme
noremap <leader>c1 :colorscheme iceberg<CR>

"rebuild Ctags (mnemonic RC -> CR -> <cr>)
nnoremap <leader>ctr :silent !myctags >/dev/null 2>&1 &<cr>:redraw!<cr>
"indent Guides;
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
"list navigation
"nnoremap <left>  :cprev<cr>zvzz
"nnoremap <right> :cnext<cr>zvzz
nnoremap <leader>? :lprev<cr>zvzz "list previous
nnoremap <leader>/ :lnext<cr>zvzz "list next
"fix whitespace
"bufexplorer
nnoremap <leader>r :vsp ~\.vimrc<CR>

set statusline+=%#warningmsg#
set ruler
set statusline+=%*

" define alternate colorscheme
colorscheme desert
