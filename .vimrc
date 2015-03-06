"intstall bundles
" Bundle 'git://git.wincent.com/command-t.git'     # Full URL to the repo to clone
"Bundle 'scrooloose/nerdtree'                     # https://github.com/scrooloose/nerdtree
"Bundle 'vim/gundo' # https://github.com/sjl/gundo.vim.git
set relativenumber
set wrap

execute pathogen#infect()
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing

set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar

set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matchesset hlsearch

nnoremap <leader><space> nohlsearch <CR> " on press Space remove highlighting

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" call pathogen#infect()                      " use pathogen
" call pathogen#runtime_append_all_bundles()  " use pathogen

"gundo set
nnoremap <F5> :GundoToggle<CR>

set synmaxcol=2048 " Syntax coloring too-long lines is slow
" Complete like most shells – longest substring first, then iterate through
" full matches
set wildmode=longest:full,full
" Show partial commands in the last line of the screen
set showcmd
" don't keep swp files
set noswapfile

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" open new split panes to right and bottom

set splitbelow
" set splitright
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:pad_dir = '~/.tmp/'
let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_cpp_errorformat = '%f:%l:%c: %trror: %m'
let g:syntastic_cpp_compiler = 'g++'


let g:linters_extra = []

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" set ruler

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
