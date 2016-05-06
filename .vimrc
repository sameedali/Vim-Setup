" Sample vimrcs were a lot of help in making this file;
" Credits to where the're due
"
"   VIMRC FILE BEGIN
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make sure you use single quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'
"
" Plug 'https://github.com/scrooloose/nerdtree.git'
"
" Group dependencies, vim-snippets depends on ultisnips
""Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" Using git URL
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

"" MY PLUGINS
" Plug 'https://github.com/tpope/vim-pathogen.git'
" Plug 'https://github.com/altercation/vim-colors-solarized'
" Plug 'https://github.com/fmoralesc/vim-pad.git'
" Plug 'https://github.com/myusuf3/numbers.vim.git'
" Plug 'https://github.com/jlanzarotta/bufexplorer.git'
" Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
" Plug 'https://github.com/vim-scripts/AutoComplPop.git'
" Plug 'https://github.com/kien/ctrlp.vim.git'
" Plug 'https://github.com/fholgado/minibufexpl.vim.git'
" Plug 'https://github.com/Shougo/unite.vim.git'
" Plug 'https://github.com/Shougo/vimshell.vim.git'
" Plug 'https://github.com/ervandew/supertab.git'
" not configured -- fast fold
" Plug 'https://github.com/Konfekt/FastFold.git'
" not configured smart . operator . works for some plugin commands after this
" Plug 'https://github.com/tpope/vim-repeat.git'
" syntax highlighting for a ton of languages
" Plug 'https://github.com/sheerun/vim-polyglot.git'
" --
" seems intersting: lib for VimL
" https://github.com/vim-scripts/L9.git

call plug#begin('~/.vim/bundle')

Plug 'https://github.com/scrooloose/nerdtree.git' , { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/chriskempson/base16-vim.git'
" Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'whatyouhide/vim-gotham'

Plug 'https://github.com/vim-scripts/Align'

Plug 'https://github.com/Raimondi/delimitMate'
Plug 'http://github.com/sjl/gundo.vim.git'
Plug 'https://bitbucket.org/tim_heap/linters.vim'

Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/scrooloose/syntastic.git'

Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/SirVer/ultisnips.git' | Plug 'https://github.com/honza/vim-snippets.git'

" Check if it is needed by any plugin -- vim-addon-mw-utils
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'
" do install as in docs in github
" Plug 'https://github.com/powerline/powerline.git'

Plug 'https://github.com/airblade/vim-gitgutter'

Plug 'https://github.com/jistr/vim-nerdtree-tabs'

Plug 'https://github.com/Shougo/vimproc.vim.git'

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/bronson/vim-trailing-whitespace'
Plug 'https://github.com/terryma/vim-expand-region.git'

Plug 'https://github.com/guns/vim-clojure-static.git', { 'for': 'clojure' }
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'for': ['c', 'cpp', 'python', 'javascript'] }

" Code to execute when the plugin is loaded on demand
" Plug 'Valloric/YouCompleteMe', { 'for': 'cpp' }
autocmd! User YouCompleteMe call youcompleteme#Enable()

" Plug 'https://github.com/marijnh/tern_for_vim.git', { 'for': 'javascript' }

Plug 'https://github.com/skammer/vim-css-color.git', { 'for': ['html', 'css'] }

" Autoload page in browser
" Plug 'jaxbot/browserlink.vim', { 'for': ['html'] }

Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/Lokaltog/vim-easymotion.git'
Plug 'https://github.com/luochen1990/rainbow.git', { 'for': 'clojure' }

Plug 'https://github.com/mattn/emmet-vim.git', { 'for': 'html' }

Plug 'https://github.com/vim-scripts/AutoComplPop.git'

" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

Plug 'fatih/vim-go', { 'for' : ['go'] }

Plug 'https://github.com/tpope/vim-speeddating.git', { 'for' : 'org' }
Plug 'jceb/vim-orgmode', { 'for' : 'org' }

" Ruby/Rails Plugins
" read up on these two -- for rails
" Plug 'tpope/vim-rails'    , { 'for' : 'ruby'}
" Plug 'tpope/vim-bundler'  , { 'for' : 'ruby'}

" adds end in ruby
Plug 'tpope/vim-endwise'  , { 'for' : 'ruby'}

" maybe not needed
"Plug 'tpope/vim-dispatch' , { 'for' : 'ruby'}

" searching inside vim
" Plug 'https://github.com/mileszs/ack.vim'
" Plug 'https://github.com/rking/ag.vim'
" Handy ] mappings
" Plag 'git://github.com/tpope/vim-unimpaired.git'
" window swap
" Plug 'https://github.com/wesQ3/vim-windowswap.git'

" maybe not needed
" Plug 'tpope/vim-dotenv'   , { 'for' : 'ruby'}

""""""""""""""""""""""""""""""""
" Reference
""""""""""""""""""""""""""""""""
" Multiple commands
" Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
" On-demand loading on both conditions
" Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }
" Plug 'https://github.com/junegunn/limelight.vim'
" autocmd! User Limelight Limelight 0.4
" Themes
" Plug 'https://github.com/mhinz/vim-janah.git'
" Plug 'morhetz/gruvbox'

" markdown syntax
Plug 'godlygeek/tabular',  { 'for' : 'markdown' }
" Plug 'plasticboy/vim-mar', { 'for' : 'markdown' }

" Add plugins to &runtimepath
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => If using Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"execute pathogen#infect()
"call pathogen#helptags()
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nvim settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if has('nvim')
"   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" end

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=70
set relativenumber  " relative line numebers
set wrap
set nocompatible    " vim not vi
set modelines=0     " disable modeline
set nomodeline      " disable modeline
set title           " show title in console title bar"
set ttyfast         " smoother chanes
" set paste         " trun on paste mode
" set exrc          " load local vimrc
" set secure exrc   " for sec dont load all options change in rc file
" set clipboard=unnamedplus " use system clipboard
" set hidden        " hides buffers insted of closing them

" Title for tmux -- disable if performance issues
" autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")
" autocmd VimLeave * call system("tmux rename-window 'bash'")

" no annoying visual bells or sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Linebreak on 500 characters
" set lbr

" Continue where left off
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Don’t show the intro message when starting Vim
set shortmess=atI

" Check file change every 4 seconds ('CursorHold')
" and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

" Disable replace mode
" nnoremap R <Esc>

" Text, tab and indent related
" set autoindent " copy indent from previous line
" Be smart when using tabs
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
" Round to 'shiftwidth' for "<<" and ">>"
set shiftround
" not sure of following one
" set copyindent    " copy the previous indentation on autoindenting

" " List of characters to highlight when displaying linebreaks
" set listchars=tab:˙»
"
" " Display a line in column 80 to show you where to line break.
" if exists('+colorcolumn')
"     set colorcolumn=80
" else
"     au BufWinEnter *? let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

set ai                          " Auto indent
set si                          " Smart indent
set wrap                        " Wrap lines

set tabstop=4                   " Number of visual spaces per TAB
set softtabstop=4               " Number of spaces in tab when editing

set expandtab                   " Use spaces inseted of tabs
set showcmd                     " Show command in bottom bar

set nocursorline                " Dont highlight current line by defualt
set nocursorcolumn              " Dont highlight cursorcolumn

syntax on                       " Turn syntax on
filetype plugin indent on       " Load filetype-specific indent files

set wildmenu                    " Visual autocomplete for command menu
set lazyredraw                  " Redraw only when we need to.
                                " Don't redraw while executing macros
                                " (good performance config)

set showmatch                   " Highlight matching [{()}]
set incsearch                   " Search as characters are entered
set hlsearch                    " Highlight matchesset hlsearch
" set noshowmode                " don't show mode -- using airline
" set more                      " Stop in list

"set foldenable                 " Enable folding
"set foldlevelstart=10          " Open most folds by default
"set foldnestmax=10             " 10 nested fold max

"set foldignore=                " don't ignore anything when folding
"set foldmarker={,}
"set foldmethod=marker
"set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
"set foldcolumn=4
"set foldlevelstart=1
set nofoldenable

"set foldmethod=syntax           " fold on basis of indent
"set foldlevel=1                 " level of folding
"set foldclose=all               " close all folds

set synmaxcol=2048              " Syntax coloring too-long lines is slow
" Complete like most shells – longest substring first, then iterate through
" full matches
set wildmode=longest:full,full  " Show partial commands in the last line of the screen
set showcmd
set noswapfile                  " don't keep swp files
set nobackup                    " no backups
set nowritebackup                    " no backups
set nowb                        " nobackups

"" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" For regular expressions turn magic on
set magic

" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
" set foldcolumn=1

" Set extra options when running in GUI mode
" if has("gui_running")
"   set guioptions-=T
"   set guioptions-=e
"set t_Co=256
"   set guitablabel=%M\ %t
" endif

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" set directories
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files"

" open new split panes to right and bottom
set splitbelow
set splitright

" In many terminal emulators the mouse works just fine, thus enable it.
" if has('mouse')
"     set mouse=a
" endif
"
" " If linux then set ttymouse
" let s:uname = system("echo -n \"$(uname)\"")
" if !v:shell_error && s:uname == "Linux" && !has('nvim')
"     set ttymouse=xterm
" endif

"" Key timeouts
"set timeout           " for mappings
"set timeoutlen=1000   " default value
"set ttimeout          " for key codes
"set ttimeoutlen=10    " unnoticeable small value

" use Ag instead of grep if possible
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
    " set grepprg=ag\ --vimgrep\ $*
    " set grepformat=%f:%l:%c:%m
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    " t://github.com/tpope/vim-unimpaired.gitlet g:ctrlp_use_caching = 0
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
"=> COMMAND MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
cmap w!! w !sudo tee % >/dev/null
cmap df w !diff % -

""""""""""""""""""""""""""""""""""""""""""""""""""
"=> KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" let mapleader = "\<Space>"
" let maplocalleader = "\\"
" nnoremap <localleader><cr> <Esc>:wq<CR>
" Smart way to move between windows
" nnoremap <C-j> <C-W>j    " Down
" nnoremap <C-k> <C-W>k    " Up
" nnoremap <C-h> <C-W>h    " Right
" nnoremap <C-l> <C-W>l    " Left

" on press Space remove highlighting
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" toggle cursor line
nnoremap <leader>- :set cursorline!<CR> :hi CursorLine cterm=bold ctermbg=DarkGray ctermfg=Green<CR>
nnoremap <leader>_ :set cursorcolumn!<CR>

" toggle insert and normal mode
" inoremap <leader><leader> <Esc>
" nnoremap <leader><leader> i
"""""""""""""""""""""""""""""""""""""""""""
" => NORMAL MODE MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""
" From current pos till end
nnoremap D d$
nnoremap Y y$

" Find all files in all non-dot directories starting in the working directory.
" Fuzzy select one of those. Open the selected file with :e.
nnoremap <leader><C-f> :call SelectaCommand("find * -type f", "", ":e")<cr>

" Grab code blocks in parenthesis
nnoremap d<TAB> d%
nnoremap y<TAB> y%

" Leader mappings
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
" next tab
nnoremap <leader>} :tabn<CR>
" prev tab
nnoremap <leader>{ :tabp<CR>
" list buffers
nnoremap <leader>l :ls<CR>
" list tabs
nnoremap <leader>L :tabs<CR>
" format tabs
nnoremap <leader><tab> :retab<CR>
" open a shell alternate :  : VimShellTab / : VimShellCreate (same buffer creates a tab)
nnoremap <leader>! :!sh<CR>
" Easy Motion
" nnoremap <leader><leader> <Plug>(easymotion-w)
" save file as html :TOhtml

"""""""""""""""""""""""""""""""""""""""""""""""""""
" INSERT MODE MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Writes to disk and quits
inoremap <leader><cr> <Esc>:wq<CR>

" Writes to files
inoremap <leader>w <Esc>:w<CR>

" Quits
inoremap <leader>q <Esc>:q<CR>

" Whitespace highlight
nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
nnoremap <Leader>wf :match<CR>

"Fix whitespace
nnoremap <leader>fw :FixWhitespace<CR>
nnoremap <leader>ff :set nofoldenable!<CR>

" Toggle show line breaks
nnoremap <silent> <leader>lb :set nolist!<CR>

" Alternate colorscheme
noremap <leader>c1 :colorscheme iceberg<CR>:set background=light<CR>

" Rebuild Ctags (mnemonic RC -> CR -> <cr>)
nnoremap <leader>ctr :silent !myctags >/dev/null 2>&1 &<cr>:redraw!<cr>

" Indent Guides;
nnoremap <silent> <Leader>ig <Plug>IndentGuidesToggle

" Toggle paste
nnoremap <silent> <Leader>p :set nopaste!<cr>

" Move to the next change
nnoremap <silent> <Leader>> :GitGutterNextHunk<cr>
nnoremap <silent> <Leader>< :GitGutterPrevHunk<cr>

" Open vimrc
nnoremap <silent> <Leader>r :e ~/.vimrc<cr>

" scroll synchroniously
nnoremap <silent> <Leader>sb :set scrollbind<cr>

" list navigation
" nnoremap <left>  :cprev<cr>zvzz
" nnoremap <right> :cnext<cr>zvzz
nnoremap <leader>? :lprev<cr>zvzz "list previous
nnoremap <leader>/ :lnext<cr>zvzz "list next

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Convert to hex
nnoremap <leader>hh :%!xxd<CR>
nnoremap <leader>h<space> :%!xxd -r<CR>

" Dont lose visual selection on indent
xnoremap <  <gv
xnoremap >  >gv

"" eval and replace -- python
vnoremap <F7> :!python<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAKE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python nnoremap <leader>e :! python %
autocmd FileType c nnoremap <leader>e :!make %
autocmd FileType clojure nnoremap <leader>E :%Eval<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Key Bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo set
nnoremap <F2> :GundoToggle<CR>

" NERDTree
nnoremap <F3> :NERDTreeToggle<CR>

" Tagbar
nnoremap <F4> :TagbarToggle<CR>

" NERDTree tabs toggle
" noremap <F5> :NERDTreeTabsToggle<CR>

" Git gutter toggle
" noremap <F6> :GitGutterSignsToggle<CR>
let g:gitgutter_max_signs = 1000

" search visually highlighted text
vnoremap // y/<C-R>"<CR>

" Close the current buffer
" map <leader>bd :Bclose<cr>
"
" Close all the buffers
" map <leader>ba :1,1000 bd!<cr>
"
" Useful mappings for managing tabs
" map <leader>tn :tabnew<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove
" map <leader>t<leader> :tabnext
"
"Let 'tl' toggle between this and the last accessed tab
" let g:lasttab = 1
" nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
" au TabLeave * let g:lasttab = tabpagenr()
"
"
"Opens a new tab with the current buffer's path
"Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
"
"Switch CWD to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>:pwd<cr>
"
"Specify the behavior when switching between buffers
" try
"   set switchbuf=useopen,usetab,newtab
"     set stal=2
"     catch
"     endtry
"
" Return to last edit position when opening files (You want this!)
"     autocmd BufReadPost *
"       \ if line("'\") > 0 && line("'\") <= line("$") |
"       \ exe "normal! g`\" |
"       \ endif
" Remember info about open buffers on close
"    set viminfo^=%)"')"'

"""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""
" vim airline
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1
" let g:airline_powerline_fonts=1

"show airline everytime
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'Buffer Number: %{bufnr("%")}'
let g:airline_theme = 'base16_default'

"""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""
"solarized
" syntax enable
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized
"end solarized

"colorscheme base16-default
"colorscheme darkzen
"colorscheme 256-grayvim
"colorscheme desert256
"colorscheme flatcolor
"colorscheme 256-grayvim
"colorscheme 256-jungle
colorscheme gotham256
let g:airline_theme = 'gotham256'

"colorscheme janah
"let g:gruvbox_italic=1
" let g:gruvbox_termcolors=16
" colorscheme gruvbox

" let base16colorspace=256
" start NERDTree on startup
" let g:nerdtree_tabs_open_on_console_startup=1

"""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_cpp_errorformat = '%f:%l:%c: %trror: %m'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 0
let g:syntastic_java_checker = 'javac'
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": ['java', 'html', 'rst', 'python']}
let g:syntastic_java_javac_delete_output=0  " Don't delete .class files after syntax check.

let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 1
let g:syntastic_stl_ormat = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" Syntax Checkers
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_css_checkers = ['csslint']
" let g:syntastic_html_checkers = ['w3']
" let g:syntastic_php_checkers = ['phpcs']
" let g:syntastic_php_phpcs_args="--report=csv --standard=WordPress"

" Syntax Highlighting -- polyglot plugin
" let g:polyglot_disabled = ['css']

" Syntastic errors.
map <F5> :Errors<cr>
map <leader>? :lprev<cr>
map <leader>/ :lnext<cr>

set wildignore+=*.class

"" Set up ctags.
" let Tlist_Ctags_Cmd = "/usr/bin/env ctags"
" let Tlist_WinWidth = 50
" map <F4> :TlistToggle<cr>
" map <F5> :!/usr/bin/env ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

"" Set up delimit-mate.
"let delimitMate_matchpairs = "(:),[:],{:}"
"let delimitMate_quotes = "\" ' `"
"let delimitMate_nesting_quotes = ['"', "'", "`"]
"
"" Enable all the things.
"let delimitMate_expand_cr = 1
"let delimitMate_expand_space = 1
"let delimitMate_jump_expansion = 1
"let delimitMate_smart_quotes = 1
"let delimitMate_balance_matchpairs = 1
"
"" Easier tab management.
"map <leader>n :tabprev<cr>
"map <leader>m :tabnext<cr>
"map <leader>tn :tabnew<cr>
"map <leader>td :tabclose<cr>

" let g:pad#dir = "~/.vim/tmp"

" linters
let g:linters_extra = []

"NERDTREE TABS
let g:NERDTreeDirArrows = 0
"define indent guide level
let g:indent_guides_indent_levels = 20
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"let g:indent_guides_default_mapping = 0

"""""""""""""""""""""""""""""""""""""""""""""""
"            Auto-Completion                  "
"""""""""""""""""""""""""""""""""""""""""""""""
" TERN completion
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" setlocal omnifunc=tern#Complete
" call tern#Enable()
" set omnifunc=syntaxcomplete#Complete
" call tern#Enable()
" runtime after/ftplugin/javascript_tern.vim
" set ft=html.javascript_tern
" set ft=html.javascript
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"""""""""""""""""""""""""""""""""""""""""""""""
"                   Snippets
"""""""""""""""""""""""""""""""""""""""""""""""
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"SnipMate
"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

"""""""""""""""""""""""""""""""""""""""""""""
"           RainbowParentheses
"""""""""""""""""""""""""""""""""""""""""""""
" 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active=1
" custom conifg
" let g:rainbow_conf = {
"    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"    \   'oper;tors': '_,_',
"    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"    \   'separately': {
"    \       '*': {},
"    \       'tex': {
"    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
"    \       },
"    \       'lisp': {
"    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
"    \       },
"    \       'vim': {
"    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
"    \       },
"    \       'html': {
"    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
"    \       },
"    \       'css': 0,
"    \   }
"    \}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Limelight config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Color name (:help cterm-colors) or ANSI code
"let g:limelight_conceal_ctermfg = 'gray'
"let g:limelight_conceal_ctermfg = 240
"
"" Color name (:help gui-colors) or RGB color
"let g:limelight_conceal_guifg = 'DarkGray'
"let g:limelight_conceal_guifg = '#777777'
"
"" Default: 0.5
"let g:limelight_default_coefficient = 0.7
"
"" Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 1
"
"" Beginning/end of paragraph
""   When there's no empty line between the paragraphs
""   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'
"
"" Highlighting priority (default: 10)
""   Set it to -1 not to overrule hlsearch
"let g:limelight_priority = -1
"
"""""""""""""""""""""""""""""""""""""""""""""""
" Ruler tabs
"""""""""""""""""""""""""""""""""""""""""""""""
"Set ruler
set ruler
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" """"""""""""""""""""""""""""""""""""""""""
" " => Spell checking
" """"""""""""""""""""""""""""""""""""""""""
" " Pressing ,ss will toggle and untoggle spell checking
" map <leader>ss :setlocal spell!<cr>
"
" " Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=

""""""""""""""""""""""""""""""""""""""""""
" => Ack searching and cope displaying
" "    requires ack.vim - it's much better than vimgrep/grep
" """""""""""""""""""""""""""""""""""""""""""
" " When you press gv you Ack after the selected text
" vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
"
" " Open Ack and put the cursor in the right position
" map <leader>g :Ack
"
" " When you press <leader>r you can search and replace the selected text
" vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>
"
" " Do :help cope if you are unsure what cope is. It's super useful!
" "
" " When you search with Ack, display your results in cope by doing:
" "   <leader>cc
" "
" " To go to the next search result do:
" "   <leader>n
" "
" " To go to the previous search results do:
" "   <leader>p
" "
" map <leader>cc :botright cope<cr>
" map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
" map <leader>n :cn<cr>
" map <leader>p :cp<cr>
"

" """"""""""""""""""""""""""""""""""""""""""""""""""
" " => Misc
" """"""""""""""""""""""""""""""""""""""""""""""""""
"
" " Quickly open a buffer for scribble
" map <leader>q :e ~/buffer<cr>
"
" " Quickly open a markdown buffer for scribble
" map <leader>x :e ~/buffer.md<cr>
"
" " Toggle paste mode on and off
" map <leader>pp :setlocal paste!<cr>]

"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" shameless refrence lol
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
" This requries that you install https://github.com/amix/vimrc !
" """"""""""""""""""""
" " => Load pathogen paths
" """"""""""""""""""""
" call pathogen#infect('~/.vim_runtime/sources_forked/{}')
" call pathogen#infect('~/.vim_runtime/sources_non_forked/{}')
" call pathogen#helptags()
"
" """"""""""""""""""""
" " => bufExplorer plugin
" """"""""""""""""""""
" let g:bufExplorerDefaultHelp=0
" let g:bufExplorerShowRelativePath=1
" let g:bufExplorerFindActive=1
" let g:bufExplorerSortBy='name'
" map <leader>o :BufExplorer<cr>
"
"
" """"""""""""""""""""
" " => MRU plugin
" """"""""""""""""""""
" let MRU_Max_Entries = 400
" map <leader>f :MRU<CR>
"
" """"""""""""""""""""
" " => YankRing
" """"""""""""""""""""
" if has("win16") || has("win32")
"     " Don't do anything
"     else
"         let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
"         endif
"
"
"         """"""""""""""""""""""""
" => CTRL-P
" """""""""""""""""""""""""
" let g:ctrlp_working_path_mode = 0
"
" let g:ctrlp_map = '<c-f>'
" map <leader>j :CtrlP<cr>
" map <c-b> :CtrlPBuffer<cr>
"
" let g:ctrlp_max_height = 20
" let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
"
"
" """"""""""""""""""""""""
" " => ZenCoding
" """""""""""""""""""""""""
" " Enable all functions in all modes
" let g:user_zen_mode='a'
"
" """"""""""""""""""""""""
" " => snipMate (beside <TAB> support <CTRL-j>)
" """""""""""""""""""""""""
" ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
" snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
"
" """"""""""""""""""""""""
" " => Vim grep
" """""""""""""""""""""""""
" let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
" set grepprg=/bin/grep\ -nH
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => Nerd Tree
" """""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>nn :NERDTreeToggle<cr>
" map <leader>nb :NERDTreeFromBookmark
" map <leader>nf :NERDTreeFind<cr>
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => vim-multiple-cursors
" """""""""""""""""""""""""""""""""""""""""""""""""""
" let g:multi_cursor_next_key="\<C-s>"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => surround.vim config
" " Annotate strings with gettext http://amix.dk/blog/post/19678
" """""""""""""""""""""""""""""""""""""""""""""""""""
" vmap Si S(i_<esc>f)
" au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => vim-airline config (force color)
" """""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme="luna"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => Vimroom
" """""""""""""""""""""""""""""""""""""""""""""""""""
" let g:goyo_width=100
" let g:goyo_margin_top = 2
" let g:goyo_margin_bottom = 2
" nnoremap <silent> <leader>z :Goyo<cr>

" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => Custom functions
" """""""""""""""""""""""""""""""""""""""""""""""""""
" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction
