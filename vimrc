" === Pathogen ===
runtime bundle/vim-pathogen/autoload/pathogen.vim   " Allows Pathogen to be installed in it's own bundle subdir
call pathogen#infect()                              " Boot up pathogen
call pathogen#helptags()                            " Make vim read in the helptags

" === Plugins ===
let g:Powerline_symbols='fancy'         " Use fancy chars for Powerline
let g:solarized_visibility='normal'     " Set the solarized list visibility
let g:pad_dir='~/Dropbox/vim_pad'       " Put pad notes in dropbox so they're synced across computers

" === Basics ===
set nocompatible    " Get out of vi compatible mode
set background=dark " Using a dark background
syntax enable       " Enable syntax highlighting
set title           " Set the terminal's title to the open file
set t_Co=256        " Use a 256 color terminal

" === General ===
set directory=~/.vim/tmp        " Set the directory where we store swap files
set fileformats=unix,mac,dos    " Support file formats in this order
set modeline                    " Enable modelines
set modelines=5                 " Modelines look 5 lines from start and end of file
set encoding=utf-8              " Use utf-8 everywhere!
set hidden                      " Allow buffers to be put in the background w/o writing to disk
set ignorecase                  " Ignore case in search
set smartcase                   " Be case-sensitive if there are caps in search
filetype indent plugin on       " Try to determine filetype by it's name and contents
set cryptmethod=blowfish        " Set the encryption method to blowfish (stronger)

" === Spell Checking ===
set nospell                     " Deactivates the spell checker
set spelllang=en_us             " Change the spell check lang to US English

" === Indention ===
set expandtab       " Tab in insert mode will do spaces
set tabstop=4       " Tab counts as 4 visual columns
set shiftwidth=4    " How many spaces reindent operators use
set softtabstop=4   " How many columns vim uses when tab pressed in insert mode
set autoindent      " When creating a newline, keep indent level

" === VIM UI ===
colorscheme solarized                   " Use 'solarized' colorscheme
set hlsearch                            " Hilight search results
set incsearch                           " Highlight while searching
set number                              " Enable line numbers
set ruler                               " Show current cursor position in bottom right
set showmatch                           " Show matching brackets
set shortmess=atI                       " Abbreviate messages, trunc filenames, don't show intro message
set laststatus=2                        " Always show the status line
set list                                " Show extra tabs, spaces, newlines at eol
set listchars=eol:¬,trail:°,precedes:«  " Set characters for list
set confirm                             " Raise a dialog if unsaved changes on exit
set colorcolumn=80                      " Highlight after the 80th column
set virtualedit=all                     " Allow the cursor to move beyond the end of the line in insert and visual mode
set wildmenu                            " Enable command-mode autocompletion when hitting <TAB>
set cursorline                          " Hilight the row the cursor is on
set conceallevel=2                      " Concealed text is hidden unless it has a custom replacement character
set nowrap                              " Don't wrap lines

" === Utility Functions ===
function! ToggleCopy()                  " Toggle what I call 'copy' mode.  Turns off list, linenumbers, and concealment
    set list!
    set number!
    if (&cole == 2)
        set cole=0
    else
        set cole=2
    endif
endfunction

" === Key Mappings ===
"                                       " F1 - Help
map <F2> <ESC>:NERDTreeToggle<CR>       " F2 - Toggle NERDTree
set pastetoggle=<F3>                    " F3 - Toggle paste mode
map <F4> :call ToggleCopy()<CR>         " F4 - Toggle copy mode
map <F5> :set spell!<CR>                " F5 - Toggle the spell checker
nnoremap <C-L> :nohl<CR><C-L>           " Disable search highlight on Ctrl-L refresh
