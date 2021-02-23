call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'                                                               " browse through directories
Plug 'uiiaoo/java-syntax.vim'                                                           " java syntax highlighting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                     " used to search files quickly 
Plug 'junegunn/fzf.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}                                  " syntax highlighting for python
"Plug 'sheerun/vim-polyglot'                                                            " syntax highlighting for many languages, not needed as of now(semshi) 
"Plug 'tpope/vim-surround'                                                              " autoclosing of brackets, quotes etc
Plug 'Raimondi/delimitMate'                                                             " autoclosing of quotes, brackets etc
"Plug 'itchyny/lightline.vim'                                                           " minmal status bar
Plug 'mhinz/vim-startify'                                                               " A start menu for vim
Plug 'vim-airline/vim-airline'                                                          " improves status bar
Plug 'vim-syntastic/syntastic'                                                          " syntax checker
Plug 'vim-airline/vim-airline-themes'                                                   " sets airline theme
Plug 'rafi/awesome-vim-colorschemes'                                                    " sets a colorscheme for vim
Plug 'preservim/nerdcommenter'                                                          " improves code commenting
Plug 'neoclide/coc.nvim',{'branch':'release'}                                           " code autocomplete engine
Plug 'ryanoasis/vim-devicons'                                                           " icons for nerdtree, airline

call plug#end()

filetype plugin on                                                                      " runs commands when a specific file type is opened

colorscheme purify                                                                      " sets the colorscheme
set encoding=utf-8                                                                      " sets the encoding to utf-8
syntax on                                                                               " turns syntax highlighting on permanently

set laststatus=2                                                                        " turns status bar on permanently
set nu rnu                                                                              " relative line numbering
set clipboard=unnamed                                                                   " public copy/paste register
set ruler
set showcmd
set noswapfile                                                                          " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start                                                          " let backspace delete over lines
set autoindent                                                                          " enable auto indentation of lines
set smartindent                                                                         " allow vim to best-effort guess the indentation
set pastetoggle=<F2>                                                                    " enable paste mode

set foldmethod=indent									" enables folding
set foldlevel=99

set wildmenu                                                                            " graphical auto complete menu
set lazyredraw                                                                          " redraws the screne when it needs to
set showmatch                                                                           " highlights matching brackets
set incsearch                                                                           " search as characters are entered
set hlsearch                                                                            " highlights matching searches

let g:syntastic_cpp_compiler = 'clang++'                                                " c++11 support in syntastic
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let mapleader = "-"
let maplocalleader = "\\"
let g:python3_host_prog = 'C:\Users\rushi\AppData\Local\Programs\Python\Python39\python.exe'
let g:NERDTreeWinPos = "right"                                                          " makes nerdtree open in the right instead of the left
let NERDTreeIgnore = ['\.pyc$', '\.class$']                                             " ignores .class and .pyc files
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent']            },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:airline_powerline_fonts = 1							" enables powerline fonts
let g:airline_theme = 'purify'								" sets the colourscheme for airline
let g:airline#extensions#tabline#enabled = 1						" Automatically displays all buffers when there's only one tab open

nnoremap // :noh<return>                                                                " clears highlights
nnoremap <leader>- ddp                                                                  " moves current line down or up
nnoremap <leader>_ ddkP
nnoremap <leader>ev :vsplit $MYVIMRC<cr>                                                " open vimrc in vertical split
nnoremap <leader>sv :source $MYVIMRC<cr>                                                " update changes into current buffer
nnoremap <buffer> <localleader>w :set wrap!<cr>                                         " enable or disable line wrapping in current buffer
nnoremap q <C-V>                                                                        " visual block mode with q

nnoremap <C-J> <C-W><C-J>                                                               " split navigations
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za                                                                     " enable folding with the spacebar
map<C-n> :NERDTreeToggle<CR>                                                            " toggles nerdtree with ctrl+n

set splitbelow
set splitright

" lightline 
"let g:lightline = {
"      \ 'colorscheme': 'purify',
"     \ 'active': {
"     \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'FugitiveHead'
"      \ },
"      \ }

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

highlight Comment cterm=italic gui=italic

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html			" settings when particular filetypes are opened
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" run code
augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <f6> :w <bar> :!python % <cr>
    autocmd filetype java nnoremap <f6> :w <bar> !javac % && java %:r <cr>
augroup END
