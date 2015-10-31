" Sample vimrcs were a lot of help in making this file;
" Credits to where the're due
"
"   VIMRC FILE BEGIN
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=70
set relativenumber  " relative line numebers
set wrap
set nocompatible    " vim not vi
set nomodeline      " disable modeline
set modelines=0     " disable modeline
set title           " show title in console title bar"
set ttyfast         " smoother chanes
" set paste           " trun on paste mode

" Title for tmux -- disable if performance issues
" autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")
" autocmd VimLeave * call system("tmux rename-window 'bash'")
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Using Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
call pathogen#helptags()
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No annoying sound on errors
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Continue where left off
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Check file change every 4 seconds ('CursorHold')
" and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

" Disable replace mode
" nnoremap R <Esc>

" => Text, tab and indent related
" Be smart when using tabs
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
"Round to 'shiftwidth' for "<<" and ">>"
set shiftround

"List of characters to highlight when displaying linebreaks
"set listchars=tab:˙»
"
"Display a line in column 80 to show you where to line break.
"if exists('+colorcolumn')
"    set colorcolumn=80
"else
"        au BufWinEnter *? let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif
"
" Linebreak on 500 characters
" set lbr
" set tw=500

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

"set foldenable                 " Enable folding
"set foldlevelstart=10          " Open most folds by default
"set foldnestmax=10             " 10 nested fold max

set foldmarker={,}
set foldmethod=marker
set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
set foldcolumn=4
set foldlevelstart=1

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
set t_Co=256
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
"   set mouse=a
"   endif


""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" setlocal leader=","
" Smart way to move between windows
"map <C-j> <C-W>j    " Down
"map <C-k> <C-W>k    " Up
"map <C-h> <C-W>h    " right
"map <C-l> <C-W>l    " left

" on press Space remove highlighting
nnoremap <leader><space> :nohlsearch<CR>

" toggle cursor line
nnoremap <leader>- :set cursorline!<CR> :hi CursorLine cterm=bold ctermbg=DarkGray ctermfg=Green<CR>
nnoremap <leader>_ :set cursorcolumn!<CR>

" toggle insert and normal mode
" inoremap <leader><leader> <Esc>
" nnoremap <leader><leader> i
"""""""""""""""""""""""""""""""""""""""""""
"       NORMAL MODE MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""
" From current pos till end
nnoremap D d$
nnoremap Y y$

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
"""""""""""""""""""""""""""""""""""""""""""""""""""
" insert mode mappings
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
nnoremap <leader>fw :Fixwhitespace<CR>
nnoremap <leader>ff :set nofoldenable!<CR>

" Toggle show line breaks
nmap <silent> <leader>lb :set nolist!<CR>

" Alternate colorscheme
noremap <leader>c1 :colorscheme iceberg<CR>

" Rebuild Ctags (mnemonic RC -> CR -> <cr>)
nnoremap <leader>ctr :silent !myctags >/dev/null 2>&1 &<cr>:redraw!<cr>

" Indent Guides;
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

" Toggle paste
nnoremap <silent> <Leader>p :set nopaste!<cr>

" Move to the next change
nnoremap <silent> <Leader>> :GitGutterNextHunk<cr>
nnoremap <silent> <Leader>< :GitGutterPrevHunk<cr>

" Open vimrc
nmap <silent> <Leader>r :vsp ~/.vimrc<cr>

" list navigation
" nnoremap <left>  :cprev<cr>zvzz
" nnoremap <right> :cnext<cr>zvzz
nnoremap <leader>? :lprev<cr>zvzz "list previous
nnoremap <leader>/ :lnext<cr>zvzz "list next

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               make
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python nnoremap <leader>e :! python %
autocmd FileType c nnoremap <leader>e :!make %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Plugin Key Bindings
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
"
"""""""""""""""""""""""""""""""""""""""""""""""
"                vim airline
"""""""""""""""""""""""""""""""""""""""""""""""
" vim airline
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1

"show airline everytime
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'Buffer Number: %{bufnr("%")}}'
let g:airline_theme = 'wombat'

"""""""""""""""""""""""""""""""""""""""""""""""
"               colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""
"solarized
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized
"end solarized

"colorscheme base16-default
"colorscheme darkzen
"colorscheme 256-grayvim
"colorscheme desert256
colorscheme flatcolor

" start NERDTree on startup
" let g:nerdtree_tabs_open_on_console_startup=1
"""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
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

" Syntastic errors.
map <F5> :Errors<cr>
map <leader>? :lprev<cr>
map <leader>/ :lnext<cr>

set wildignore+=*.class

"" Set up ctags.
"let Tlist_Ctags_Cmd = "/usr/bin/env ctags"
"let Tlist_WinWidth = 50
"map <F4> :TlistToggle<cr>
"map <F5> :!/usr/bin/env ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
"
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

let g:pad#dir = "~/.vim/tmp"

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
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" setlocal omnifunc=tern#Complete
" call tern#Enable()
" set omnifunc=syntaxcomplete#Complete
" call tern#Enable()
" runtime after/ftplugin/javascript_tern.vim
" set ft=html.javascript_tern
" set ft=html.javascript

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
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""""""""""""""""""""""""""""""""""""
" Ruler tabs
"""""""""""""""""""""""""""""""""""""""""""""""
"Set ruler
set statusline+=%#warningmsg#
set ruler
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
"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => Syntastic (syntax checker)
" """""""""""""""""""""""""""""""""""""""""""""""""""
" let g:syntastic_python_checkers=['pyflakes']))
