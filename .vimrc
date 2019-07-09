" Sample vimrcs were a lot of help in making this file;
" Credits to where the're due
"
"   VIMRC FILE
"
" diffmode dont load any plugs
if &diff
    colorscheme evening
    autocmd BufWritePost * diffupdate
    finish
endif

"colorschele
set t_Co=256

call plug#begin('~/.vim/bundle')
" navigation
Plug 'https://github.com/scrooloose/nerdtree.git' , { 'on':  'NERDTreeToggle' }
" Plug 'https://github.com/jistr/vim-nerdtree-tabs'
autocmd! User nerdtree call Initnerdtree()

" Plug 'https://github.com/pelodelfuego/vim-swoop'
" SEARCH
" Plug 'mileszs/ack.vim'

" recently used files
" Plug 'https://github.com/yegappan/mru.git', {'on': 'MRU'}
" autocmd! User mru call Initmru()
" Plug 'vim-ctrlspace/vim-ctrlspace'

" editor config
Plug 'https://github.com/editorconfig/editorconfig-vim.git'

"Plug 'https://github.com/vim-scripts/YankRing.vim'
"autocmd! User YankRing call Inityankring()

" git plugins
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'http://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/airblade/vim-gitgutter'
" diffconflicts config:
" git config --global merge.tool diffconflicts
" git config --global mergetool.diffconflicts.cmd 'vim -c DiffConflicts "$MERGED" "$BASE" "$LOCAL" "$REMOTE"'
" git config --global mergetool.diffconflicts.trustExitCode true
" git config --global mergetool.keepBackup false
" :DiffConflictsShowHistory opens tab containing BASE LOCAL and REMOTE
" diff conflicts
Plug 'https://github.com/whiteinge/diffconflicts'
" error in plugin
"Plug 'https://github.com/vim-scripts/ConflictMotions.git'
" error in plugin
" Plug 'https://github.com/vim-scripts/ConflictDetection.git'

" bottom display bar
"Plug 'https://github.com/vim-airline/vim-airline.git'
"Plug 'vim-airline/vim-airline-themes'
" Do install as in docs in github
" Plug 'https://github.com/powerline/powerline.git'
Plug 'itchyny/lightline.vim'
autocmd! User lightline call Initlightline()

" colorschemes
Plug 'https://github.com/flazz/vim-colorschemes.git'
"Plug 'https://github.com/mhinz/vim-janah.git'
" Plug 'https://github.com/chriskempson/base16-vim.git'
" Plug 'https://github.com/altercation/vim-colors-solarized.git'
" Plug 'whatyouhide/vim-gotham'
Plug 'kaicataldo/material.vim'

" syntax highlighting
Plug 'https://github.com/sheerun/vim-polyglot.git'

" libs
Plug 'https://github.com/Shougo/vimproc.vim.git', {'do': 'make'}
Plug 'https://github.com/tomtom/tlib_vim.git'
" Check if it is needed by any plugin -- vim-addon-mw-utils
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'

" Motions plugins
Plug 'https://github.com/wellle/targets.vim.git'
Plug 'https://github.com/christoomey/vim-sort-motion.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/Lokaltog/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-surround.git'

Plug 'https://github.com/bronson/vim-trailing-whitespace'
" only fix whitespace of edited lines
Plug 'thirtythreeforty/lessspace.vim', {'for': 'c'}
autocmd! User lessspace call Initlessspace()
Plug 'houtsnip/vim-emacscommandline'

" Clojure plugins
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'https://github.com/luochen1990/rainbow.git', { 'for': 'clojure' }
autocmd! User rainbow call Initrainbow()

Plug 'https://github.com/guns/vim-clojure-static.git', { 'for': 'clojure' }
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme', 'lisp'] }
Plug 'https://github.com/maxbrunsfeld/vim-yankstack.git', {'for': ['lisp', 'clojure', 'scheme']}

" haskell
Plug 'https://github.com/neovimhaskell/haskell-vim.git', { 'for': 'haskell' }
autocmd! User haskell-vim call Inithaskellvim()

" Ruby/Rails
Plug 'tpope/vim-endwise'  , { 'for' : 'ruby'}
" read up on these two -- for rails
" Plug 'tpope/vim-rails'    , { 'for' : 'ruby'}
" Plug 'tpope/vim-bundler'  , { 'for' : 'ruby'}
" adds end in ruby
" maybe not needed
"Plug 'tpope/vim-dispatch' , { 'for' : 'ruby'}
" maybe not needed
" Plug 'tpope/vim-dotenv'   , { 'for' : 'ruby'}

" golang
Plug 'fatih/vim-go', { 'for' : ['go'] }

" org
Plug 'https://github.com/tpope/vim-speeddating.git', { 'for' : 'org' }
Plug 'jceb/vim-orgmode', { 'for' : 'org' }

" markdown
" Plug 'godlygeek/tabular',  { 'for' : 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for' : 'markdown' }

" tex
Plug 'LaTeX-Box-Team/LaTeX-Box', {'for': 'tex'}

" csv
Plug 'chrisbra/csv.vim', {'for': 'csv'}

" alda
" under development
" Plug 'https://github.com/daveyarwood/vim-alda', {'for': 'alda'}

" => AUTO COMPLETERS <=

" text/type helpers
Plug 'https://github.com/vim-scripts/Align', {'on': 'Align'}
Plug 'https://github.com/Raimondi/delimitMate'
autocmd! User delimitMate call Initdelimitmate()

Plug 'https://github.com/SirVer/ultisnips.git' | Plug 'https://github.com/honza/vim-snippets.git'
Plug 'https://github.com/dhruvasagar/vim-table-mode', {'on': 'TableModeToggle'}

" Plug 'https://github.com/vim-scripts/AutoComplPop.git'

" CODE COMPLETION
" Code to execute when the plugin is loaded on demand
" Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.py --clang-completer', 'for': ['c', 'cpp', 'python', 'javascript'] }
" autocmd! User YouCompleteMe call Initycm()

if has('nvim')
    " set before loading for completion
    " disabled for speed
    let g:ale_completion_enabled = 0
    let g:ale_python_pyls_executable = 'pyls'
    let g:ale_lint_on_text_changed = 0
    let g:ale_linters = {'python': ["pyls"]}
    Plug 'w0rp/ale', {'for': ['c', 'cpp', 'javascript', 'clojure', 'python', 'lua'], 'on': 'AlEEnable'}
else
    Plug 'https://github.com/scrooloose/syntastic.git', { 'for': ['c', 'cpp', 'python', 'javascript'] }
    autocmd! User syntastic call Initsyntastic()
end

Plug 'https://bitbucket.org/tim_heap/linters.vim', { 'for': ['c', 'cpp', 'python', 'javascript'] }
" Plug 'https://github.com/scrooloose/nerdcommenter', { 'for': ['c', 'cpp', 'python', 'javascript'] }

" autocompleter for multiple languages
if has("python3")
    if has('nvim')
        let g:deoplete#enable_at_startup = 1
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'for': ['c', 'cpp', 'python']}
        " pip install --user nrepl-python-client
        Plug 'clojure-vim/async-clj-omni', { 'for': 'clojure' }
        autocmd! User async-clj-omni call Initaysnycljomni()
        "Plug 'SevereOverfl0w/deoplete-github'

    else
        "Plug 'Shougo/deoplete.nvim'
        "Plug 'roxma/nvim-yarp'
        "Plug 'roxma/vim-hug-neovim-rpc'
    endif
endif

" YCM has tern
" Plug 'https://github.com/marijnh/tern_for_vim.git', { 'for': 'javascript' }

" Source graph shows sample code while typing
" Plug 'sourcegraph/sourcegraph-vim', {'for': ['go']} " depreciated?

" Kite co pilot for programing
"Plug 'https://github.com/kiteco/plugins.git', {'for': ['python']}

Plug 'https://github.com/majutsushi/tagbar', { 'for': ['c', 'cpp', 'cuda', 'python', 'javascript'], 'on': 'TagbarToggle'}

" (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" make
Plug 'neomake/neomake', { 'for': ['c', 'cpp', 'cuda', 'python', 'javascript'], 'on': 'Neomake'}
" interactive coding
" Plugin 'metakirby5/codi.vim'
" => END <=

" => WEB DEV <=
Plug 'https://github.com/skammer/vim-css-color.git', { 'for': ['html', 'css'] }
Plug 'https://github.com/terryma/vim-expand-region.git', {'for': 'html'}

" Autoload page in browser
" Plug 'jaxbot/browserlink.vim', { 'for': ['html'] }

Plug 'https://github.com/mattn/emmet-vim.git', { 'for': ['html', 'css'] }
autocmd! User emmet-vim call Initemmetvim()
" => END <=

" experimental
" Plug 'https://github.com/rbong/vim-vertical.git'
Plug 'https://github.com/tpope/vim-repeat.git'

" GTAGS
" Plug '~/.vim/user-plugins/gtags'

" Add plugins to &runtimepath
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nvim settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " set termguicolors
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  " nvim terminal config
  tnoremap <A-h> <C-\><C-N><C-w>h
  tnoremap <A-j> <C-\><C-N><C-w>j
  tnoremap <A-k> <C-\><C-N><C-w>k
  tnoremap <A-l> <C-\><C-N><C-w>l
  inoremap <A-h> <C-\><C-N><C-w>h
  inoremap <A-j> <C-\><C-N><C-w>j
  inoremap <A-k> <C-\><C-N><C-w>k
  inoremap <A-l> <C-\><C-N><C-w>l
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l

  tnoremap <Esc> <C-\><C-n>
end

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
set hidden        " hides buffers insted of closing them

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
" au BufWinLeave ?* mkview
" au BufWinEnter ?* silent loadview

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

" Mutt mail
au BufRead /tmp/mutt-* set tw=72

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

" colorscheme
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

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
    "   let g:ackprg = 'ag --vimgrep'
    " set grepprg=ag\ --vimgrep\ $*
    " set grepformat=%f:%l:%c:%m
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    " t://github.com/tpope/vim-unimpaired.gitlet g:ctrlp_use_caching = 0
    " " bind K to grep word under cursor
    " nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif

" ruler tabs
set ruler
set wildignore+=*.class

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
" nnoremap <leader><C-f> :call SelectaCommand("find * -type f", "", ":e")<cr>
" nnoremap <leader><C-f> :call SelectaCommand("ag * -U -l -g -f", "", ":vsp")<cr>
nnoremap <leader><C-t> :vsp term://bash<cr>

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

" tab management.
" nnoremap <leader>tn :tabprev<cr>
" nnoremap <leader>tm :tabnext<cr>
" nnoremap <leader>tn :tabnew<cr>
" nnoremap <leader>td :tabclose<cr>

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
" CtrlSpace mapping
" nnoremap <silent><C-p> :CtrlSpace<CR>
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

" search visually highlighted text
vnoremap // y/<C-R>"<CR>

" find number of occurances of last search term
nnoremap <leader>* *<C-O>:%s///gn<CR>

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
nnoremap <leader>f :MRU<CR>

" Gundo set
nnoremap <F2> :GundoToggle<CR>

" tagbar
nnoremap <F4> :TagbarToggle<CR>

" Git gutter toggle
" noremap <F6> :GitGutterSignsToggle<CR>
let g:gitgutter_max_signs = 1000
set updatetime=100

" Close the current buffer
" map <leader>bd :Bclose<cr>

" Close all the buffers
" map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
" map <leader>tn :tabnew<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove
" map <leader>t<leader> :tabnext

"Let 'tl' toggle between this and the last accessed tab
" let g:lasttab = 1
" nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
" au TabLeave * let g:lasttab = tabpagenr()

"Opens a new tab with the current buffer's path
"Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"Switch CWD to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>:pwd<cr>

"Specify the behavior when switching between buffers
" try
"   set switchbuf=useopen,usetab,newtab
"     set stal=2
"     catch
"     endtry

" Return to last edit position when opening files (You want this!)
"     autocmd BufReadPost *
"       \ if line("'\") > 0 && line("'\") <= line("$") |
"       \ exe "normal! g`\" |
"       \ endif
" Remember info about open buffers on close
"    set viminfo^=%)"')"'

"""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""
 colorscheme zenburn
" set background=dark
" colorscheme material
" colorscheme janah
" autocmd ColorScheme janah highlight Normal ctermbg=235

" => Statusline
" ==> Vim Airline
" show airline everytime
set laststatus=2
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'Buffer Number: %{bufnr("%")}'
" let g:airline_theme = 'base16_default'
" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled = 1

function! LightlineMode()
  return expand('%:t') ==# '__Tagbar__' ? 'Tagbar':
        \ expand('%:t') ==# 'ControlP' ? 'CtrlP' :
        \ &filetype ==# 'unite' ? 'Unite' :
        \ &filetype ==# 'vimfiler' ? 'VimFiler' :
        \ &filetype ==# 'vimshell' ? 'VimShell' :
        \ lightline#mode()
endfunction

function! Initlightline()
    let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'mode': 'LightlineMode'
      \ },
      \ }
endfunction
call Initlightline()

" Syntax Highlighting -- polyglot plugin
" let g:polyglot_disabled = ['css']

" Set up ctags.
" let Tlist_Ctags_Cmd = "/usr/bin/env ctags"
" let Tlist_WinWidth = 50
" map <F4> :TlistToggle<cr>
" map <F5> :!/usr/bin/env ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

" linters
" https://bitbucket.org/tim_heap/linters.vim
" let g:linters_extra = []

"""""""""""""""""""""""""""""""""""""""""""""""
"            Auto-Completion                  "
"""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" YCM
function! Initycm()
    let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
    call youcompleteme#Enable()
endfunction

" emmet
function! Initemmetvim()
    let g:user_emmet_install_global = 0
    call EmmetInstall()
endfunction

function! Inittest()
    echom "Test function called"
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""
"                   Snippets
"""""""""""""""""""""""""""""""""""""""""""""""
function! Initultisnips()
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<C-J>"
    let g:UltiSnipsJumpForwardTrigger="<C-J>"
    let g:UltiSnipsJumpBackwardTrigger="<C-K>"
    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

    " SnipMate
    "let g:snipMate = {}
    "let g:snipMate.scope_aliases = {}
    "let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
endfunction
call Initultisnips()

"""""""""""""""""""""""""""""""""""""""""""""
"           RainbowParentheses
"""""""""""""""""""""""""""""""""""""""""""""
function! Initrainbow()
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
endfunction

function! Initsyntastic()
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    " errors
    nnoremap <F5> :Errors<cr>
    nnoremap <leader>? :lprev<cr>
    nnoremap <leader>/ :lnext<cr>

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
    " Don't delete .class files after syntax check.
    let g:syntastic_java_javac_delete_output=0
    " airline for syntastic
    let g:airline#extensions#syntastic#enabled=1

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
endfunction

function! Inithaskellvim()
    let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
    let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
    let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
    let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
    let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
    let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
    let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
endfunction

" clj omni func
function! Initaysnycljomni()
    let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
    let g:deoplete#keyword_patterns = {}
endfunction

function! Initnerdtree()
    "  NERDTree on startup
    " let g:nerdtree_tabs_open_on_console_startup=1
    " tabs toggle
    " noremap <F5> :NERDTreeTabsToggle<CR>
    nnoremap <F3> :NERDTreeToggle<CR>
    "NERDTREE TABS
    let g:NERDTreeDirArrows = 0
    "define indent guide level
    let g:indent_guides_indent_levels = 20
    "let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
    "let g:indent_guides_default_mapping = 0
endfunction

function! Initdelimitmate()
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
endfunction

function! Initmru()
    let MRU_Max_Entries = 100
endfunction

function! InitCtrlSpace()
    if executable("ag")
        let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    endif
endfunction
" function! Inityankring()
"     if has("win16") || has("win32")
"         " Don't do anything
"     else
"         let g:yankring_history_dir = '~/.vim/yank_tmp/'
"     endif
" endfunction

function! Initlessspace()
    let g:lessspace_enabled = 0
endfunction
" """"""""""""""""""""""""""""""""""""""""""""""""
" => Vim grep
" """""""""""""""""""""""""""""""""""""""""""""""""
" let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'

" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | peco " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  REFERENCES <=
""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"
" seems intersting: lib for VimL
" https://github.com/vim-scripts/L9.git
