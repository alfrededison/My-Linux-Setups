set nocompatible  " required
filetype off      " required

" set the runtime path to include Vundle and intialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manages Vundle, required
Plugin 'gmarik/Vundle.vim'

"> Syntax highlighting
Plugin 'sheerun/vim-polyglot' "  language SYNTAX packs
" Plugin 'vim-syntastic/syntastic'

"> Navigation
" Plugin 'Shougo/unite.vim'
" Plugin 'moll/vim-node'
" OR
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'preservim/nerdtree'
Plugin 'kien/ctrlp.vim'

" + YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

"> Coding
Plugin 'w0rp/ale' " Syntax linter
" Plugin 'dense-analysis/ale'
Plugin 'Chiel92/vim-autoformat' " spaces/braces etc. (ESlint/gofmt)
Plugin 'Valloric/MatchTagAlways' " highlight enclosing tags
" Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'

"> Javascript
Plugin 'SirVer/ultisnips' " base
" Plugin 'honza/vim-snippets' " html C etc...
Plugin 'epilande/vim-es2015-snippets' " es6
Plugin 'epilande/vim-react-snippets' " react
Plugin 'alexbyk/vim-ultisnips-js-testing' " mocha/jasmine
" Plugin 'leafgarland/typescript-vim'
" Plugin 'pangloss/vim-javascript'
" Plugin 'maxmellon/vim-jsx-pretty'

"> Python
Plugin 'zchee/deoplete-jedi', " https://github.com/zchee/deoplete-jedi
Plugin 'jmcantrell/vim-virtualenv', " https://github.com/jmcantrell/vim-virtualenv
Plugin 'ehamberg/vim-cute-python', " use unicode characters for several built-in functions and operators
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'nvie/vim-flake8'

"> Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"> Version control
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'airblade/vim-gitgutter' " Git diff

"> Misc
Plugin 'skielbasa/vim-material-monokai'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Raimondi/delimitMate' " auto-completion for quotes, parens, brackets, etc
Plugin 'mattn/gist-vim'
Plugin 'tmux-plugins/vim-tmux'

" Neovim
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'roxma/nvim-yarp'
" Plugin 'roxma/vim-hug-neovim-rpc'

call vundle#end()

" turns on detection, plugin and indent all 3 at once
filetype plugin indent on " required

" Settings
"---------------------------

" ctrP to ignore folders such as node_modules
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Open NERDTree with Ctrl+B
map <C-b> :NERDTreeToggle<CR>

"> Status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"> MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript.jsx' : 1,
    \ 'art' : 1,
    \} " art for art-template

"> Linting
let g:ale_fixers = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_warning = '±'
let g:ale_sign_error = '✘'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_lint_on_text_changed = 'never'
let g:airline#extensions#ale#enabled = 1 " Enable ale airline integration
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Python 3 ALE
let g:ale_python_pylint_executable = ''
let g:ale_python_pylint_options = '-m pylint --max-line-length 120'
let g:ale_python_autopep8_executable = 'autopep8'
let g:ale_python_autopep8_options = '--in-place --aggressive --aggressive --experimental --ignore-local-config --max-line-length 120 --jobs 4'
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8 --max-line-length=120'
let g:ale_python_mypy_executable = ''
let g:ale_python_yapf_executable = 'yapf'
let g:ale_python_yapf_options = '--parallel --in-place --recursive'

" Enable formatting for front-end files
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

"> Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:ale_sign_column_always = 0 " Always show ale column
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"> YouCompleteMe
set completeopt-=preview " Don't show YCM's preview window
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_confirm_extra_conf=0
let g:ycm_enable_diagnostic_highlighting = 0

"> snippets
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"> Git Gist
let g:gist_post_private = 0
let g:gist_post_anonymous = 0
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 0

" Set colors
"---------------------------
syntax on
if !exists('g:syntax_on')
    syntax enable
endif
set t_Co=256
set cursorline
set background=dark
colorscheme material-monokai
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
let g:airline_theme='materialmonokai'
let g:materialmonokai_subtle_airline=1

"  Main settings
"---------------------------
set guifont=Menlo\ Regular:h14 " font
set number " line numbers
set hidden " shows files that starts from .
set autoread " reload file if the file changes on the disk
set history=100 " history of commands
set wrap " enables visual wrapping + NEXT line
set textwidth=0 wrapmargin=0 " remove automatic insertion of newlines
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces
set hlsearch " highlighting search matches
set list " Show trailing whitespace
let g:loaded_matchparen=0 " disable auto highlighting of matched parentheses
set listchars=tab:▸\ ,trail:▫ " Display tabs an invisible characters
set encoding=UTF-8 " Save with utf8 encoding
set shell=/bin/bash " Open bash
set updatetime=100 " redraw the status bar often
set title " let vim set the terminal title
set clipboard=unnamed " Allow system clipboard

" Append tabs configs
"----------------------------------------------
source ~/.vimrc_tabs
