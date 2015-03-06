
set number
set numberwidth=3
set t_Co=256
colorscheme iceberg
" disable replace mode
"nnoremap R <Esc> " Disable replace mode

" No annoying sound on errors
set noerrorbells
set novisualbell
"set t_vb=
set tm=500

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W><
map <C-l> <C-W>>
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing

set expandtab           " tabs are spaces
set showcmd             " show command in bottom bar

set nocursorline          " dont highlight current line by defualt

set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matchesset hlsearch

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing

set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar

"set cursorline          " highlight current line
set nocursorline        " set no cursor line

"filetype plugin indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matchesset hlsearch

" on press Space remove highlighting
nnoremap <leader><space> :nohlsearch<CR> 
nnoremap <leader><CR> :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader><space> :nohlsearch<CR> 
nnoremap <leader>w :w<CR>
inoremap <leader><leader> <C-n>
"n
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set synmaxcol=2048 " Syntax coloring too-long lines is slow

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"
"vim airline
set laststatus=2
set synmaxcol=2048 " Syntax coloring too-long lines is slow
" Complete like most shells – longest substring first, then iterate through
" full matches
set wildmode=longest:full,full
" Show partial commands in the last line of the screen
set showcmd
" don't keep swp files
set noswapfile
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" open new split panes to right and bottom
" set splitbelow
" set splitright

"set ruler
set hlsearch 

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
