""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Sets how many lines of history VIM has to remember
set history=70
"relative numbers
set relativenumber
set wrap
set nocompatible
set title           " show title in console title bar"
set ttyfast         " smoother chanes
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Using Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"using pathogen
execute pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No annoying sound on errors
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" continue where left off
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Disable replace mode
" nnoremap R <Esc>

" => Text, tab and indent related
" Be smart when using tabs
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4

"list of characters to highlight when displaying linebreaks
"set listchars=tab:˙»

" " Linebreak on 500 characters
" set lbr
" set tw=500
"
set ai                        "Auto indent
set si                        "Smart indent
set wrap                      "Wrap lines

set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing

set expandtab                   " use spaces inseted of tabs
set showcmd                     " show command in bottom bar

set nocursorline                " dont highlight current line by defualt
set nocursorcolumn              " dont highlight cursorcolumn

filetype plugin indent on       " load filetype-specific indent files

set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when we need to. Don't redraw while executing macros (good performance config)
set showmatch                   " highlight matching [{()}]
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matchesset hlsearch
"set foldenable                  " enable folding
"set foldlevelstart=10           " open most folds by default
"set foldnestmax=10              " 10 nested fold max

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
"

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files"

" open new split panes to right and bottom
" set splitbelow
" set splitright

" In many terminal emulators the mouse works just fine, thus enable it.
" if has('mouse')
"   set mouse=a
"   endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows
map <C-j> <C-W>j    " Down
map <C-k> <C-W>k    " Up
map <C-h> <C-W>h    " right
map <C-l> <C-W>l    " left

" on press Space remove highlighting
nnoremap <leader><space> :nohlsearch<CR>

" toggle cursor line
nnoremap <leader>- :set cursorline!<CR> :hi CursorLine cterm=bold ctermbg=DarkGray ctermfg=Green<CR>
nnoremap <leader>_ :set cursorcolumn!<CR>

" save file
nnoremap <leader><cr> :wq<CR> " writes to disk and quits
noremap <leader>w :w<CR>     " writes to file
noremap <leader>q :q<CR>     " quits
noremap <leader>Q :qa<CR>    " quits all buffers
noremap <leader>] :bn<CR>    " next buffer
noremap <leader>[ :bp<CR>    " prev buffer
nnoremap <leader>l :ls<CR>       " list buffers
nnoremap <leader>$ :!sh<CR>  " open a shell
map <leader>d d%             " leader d deletes everything inside given paranthesis
map <leader>y y%             " leader y copies everything inside given paranthesis
"whitespace highlight
nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
nnoremap <Leader>wf :match<CR>

" show line breaks
nmap <silent> <leader>lb :set nolist!<CR>

"alternate colorscheme
noremap <leader>c1 :colorscheme iceberg<CR>

"rebuild Ctags (mnemonic RC -> CR -> <cr>)
nnoremap <leader>ctr :silent !myctags >/dev/null 2>&1 &<cr>:redraw!<cr>
" Made D behave
nnoremap D d$
"indent Guides;
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
"list navigation
"nnoremap <left>  :cprev<cr>zvzz
"nnoremap <right> :cnext<cr>zvzz
nnoremap <leader>? :lprev<cr>zvzz "list previous
nnoremap <leader>/ :lnext<cr>zvzz "list next
"fix whitespace
"bufexplorer

"""""""""""""""""""""""""""""""""""""""""""""""""
"               plugin Key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""
"gundo set
nnoremap <F2> :GundoToggle<CR>

" NERDTree
noremap <F3> :NERDTreeToggle<CR>

"tagbar
nmap <F4> :TagbarToggle<CR>

" NERDTree tabs toggle
" noremap <F5> :NERDTreeTabsToggle<CR>
" git gutter toggle
" noremap <F6> :GitGutterSignsToggle<CR>

" Close the current buffer
" map <leader>bd :Bclose<cr>
"
"Close all the buffers
" map <leader>ba :1,1000 bd!<cr>
"
"Useful mappings for managing tabs
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
" vim airline
"""""""""""""""""""""""""""""""""""""""""""""""

"vim airline
let g:airline#extensions#tabline#enabled = 1

"show airline everytime
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'Buffer Number: %{bufnr("%")} %{fugitive#statusline()}'

" run command after all plugins load | set theme to wombat
autocmd VimEnter * AirlineTheme wombat

"""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
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

" auto tab completion by delimitMate

"""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic
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
"let g:syntastic_check_on_wq = 0
"new option added
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 0
let g:syntastic_java_checker = 'javac'
let g:syntastic_mode_map = { "mode": "active", "active_filetypes": [], "passive_filetypes": ['java', 'html', 'rst']}

let g:syntastic_java_javac_delete_output=0  " Don't delete .class files after syntax check.
set wildignore+=*.class
"let g:syntastic_java_javac_classpath = '/vagrant/AP/robots/Assignment1/URLExtractor/src/'

let g:pad_dir = "~/.vim/tmp"
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
"                   Snippets
"""""""""""""""""""""""""""""""""""""""""""""""
"+++++++++++++++++  Snippets ++++++++++++++++++
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<!>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<!>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
""If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"snipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
"end


"""""""""""""""""""""""""""""""""""""""""""""""
" ruler tabs
"""""""""""""""""""""""""""""""""""""""""""""""
"set ruler
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set hlsearch
set statusline+=%*

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
"
"
" """"""""""""""""""""""""""""""""""""""""""""""""""
" " => Misc
" """"""""""""""""""""""""""""""""""""""""""""""""""
" " Remove the Windows ^M - when the encodings gets messed up
" noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
"
" " Quickly open a buffer for scribble
" map <leader>q :e ~/buffer<cr>
"
" " Quickly open a markdown buffer for scribble
" map <leader>x :e ~/buffer.md<cr>
"
" " Toggle paste mode on and off
" map <leader>pp :setlocal paste!<cr>]
"
"
"
"
"
"
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
" "       This requries that you install https://github.com/amix/vimrc !
" "
" """""""""""""""""""""""""""""""""""""""""""
"
"
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
"
" """"""""""""""""""""""""
" " => snipMate (beside <TAB> support <CTRL-j>)
" """""""""""""""""""""""""
" ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
" snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
"
"
" """"""""""""""""""""""""
" " => Vim grep
" """""""""""""""""""""""""
" let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
" set grepprg=/bin/grep\ -nH
"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => Nerd Tree
" """""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>nn :NERDTreeToggle<cr>
" map <leader>nb :NERDTreeFromBookmark
" map <leader>nf :NERDTreeFind<cr>
"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => vim-multiple-cursors
" """""""""""""""""""""""""""""""""""""""""""""""""""
" let g:multi_cursor_next_key="\<C-s>"
"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""
" " => surround.vim config
" " Annotate strings with gettext http://amix.dk/blog/post/19678
" """""""""""""""""""""""""""""""""""""""""""""""""""
" vmap Si S(i_<esc>f)
" au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>
"
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
