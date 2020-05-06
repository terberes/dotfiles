" VimRC




" ===============================================
"         _             _           
"   _ __ | |_   _  __ _(_)_ __  ___ 
"  | '_ \| | | | |/ _` | | '_ \/ __|
"  | |_) | | |_| | (_| | | | | \__ \
"  | .__/|_|\__,_|\__, |_|_| |_|___/
"  |_|            |___/ 
"
" ===============================================

call plug#begin('/home/terberes/.vim/bundle')


"--------------=== Appearance === --------------------

Plug 'ryanoasis/vim-devicons'           " Cool icons (nerd font glyphs)
Plug 'morhetz/gruvbox'                  " Gruvbox color scheme
Plug 'arcticicestudio/nord-vim'

"--------------=== Code/project navigation ===--------
Plug 'preservim/nerdtree' 	   	        " Project and file navigation
Plug 'majutsushi/tagbar'          	    " Class/module browser

"--------------=== Other ===--------------------------
Plug 'tpope/vim-fugitive'               " Awesome git wrapper
Plug 'bling/vim-airline'   	   	        " Lean & mean status/tabline for vim
Plug 'fisadev/FixedTaskList.vim'  	    " Pending tasks list
Plug 'rosenfeld/conque-term'      	    " Consoles as buffers
Plug 'tpope/vim-surround'               " Parentheses, brackets, quotes, XML tags, and more
Plug 'jiangmiao/auto-pairs'             " Automatic dual parentheses

"--------------=== Snippets support ===---------------
Plug 'garbas/vim-snipmate'		       " Snippets manager
Plug 'MarcWeber/vim-addon-mw-utils'	   " dependencies #1
Plug 'tomtom/tlib_vim'		           " dependencies #2
Plug 'honza/vim-snippets'		       " snippets repo

"---------------=== Languages support ===-------------
Plug 'dense-analysis/ale'                               " Universal linter

" --- Python ---

Plug 'sheerun/vim-polyglot'                             " Multilanguage support
Plug 'fatih/vim-go', {'for': 'go'}		            " Golang support
"Plug 'klen/python-mode', {'for': 'python'}	            " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
" Plug 'davidhalter/jedi-vim', {'for': 'python'}	    " Jedi-vim autocomplete plugin
" Plug 'mitsuhiko/vim-jinja', {'for': 'python'}  " Jinja support for vim
Plug 'mitsuhiko/vim-python-combined', {'for': 'python'} " Combined Python 2/3 for Vim


call plug#end()

" !=============================!
" !           Config            !
" !=============================!


" Colorscheme config
colorscheme nord
" let g:gruvbox_contrast_dark = 'hard'
set background=dark
syntax on

" Fonts and symbols config
set number
set encoding=UTF-8

" Code
filetype plugin indent on  " show existing tab with 4 spaces width
set tabstop=4              " when indenting with '>', use 4 spaces width
set shiftwidth=4           " On pressing tab, insert 4 spaces
set expandtab
set autowrite              " Save before build
au FileType vim            let b:AutoPairs = AutoPairsDefine({'"': ''})

" Navigation misc

set splitbelow
set splitright

" Keystrokes

nnoremap <C-J> <C-W><C-J> " Better keystrokes for splits navigation:
nnoremap <C-K> <C-W><C-K> " from Ctrl+W Ctrl+K to Ctrl+K
nnoremap <C-L> <C-W><C-L> " etc.
nnoremap <C-H> <C-W><C-H> "  
" Error correction
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1



