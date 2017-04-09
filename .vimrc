set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mtth/scratch.vim'
Plugin 'reedes/vim-pencil'
Plugin 'chriskempson/base16-vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'tpope/vim-fugitive'

"Syntax Checks
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'Shutnik/jshint2.vim'


"Clojure
Plugin 'git@github.com:guns/vim-clojure-static.git'
Plugin 'tpope/vim-fireplace'
Plugin 'dgrnbrg/vim-redl'
Plugin 'guns/vim-clojure-highlight'

"Parens
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'luochen1990/rainbow'

"Syntax
" Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-liquid'
" Plugin 'mtscout6/syntastic-local-eslint.vim'
" Plugin 'vim-syntastic/syntastic'

"JS Syntax
" Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'
" Plugin 'othree/yajs.vim'
Plugin 'maxmellon/vim-jsx-pretty'

"Snippets
Plugin 'honza/vim-snippets'
Plugin 'https://github.com/signal-intrusion/vim-react-snippets.git'
Plugin 'firegoby/SASS-Snippets'
Plugin 'evidens/vim-twig'
" Plugin 'mustache/vim-mustache-handlebars'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/loremipsum'
Plugin 'SirVer/ultisnips'


"docblocks
Plugin 'tobyS/vmustache'       "hbs
Plugin 'tobyS/pdv'             "php
Plugin 'heavenshell/vim-jsdoc' "js
call vundle#end()            " required
filetype plugin indent on    " required
autocmd VimEnter * NERDTree
:set autoread

" ------ colors, lines, and numbers ------ "

let base16colorspace=256
set t_Co=256
syntax enable

set background=dark
"let g:solarized_visibility = "low"
"let g:solarized_contrast = "low"
"let g:solarized_termcolors=256
" colorscheme Tomorrow-Night-Eighties
" colorscheme base16-apathy
colorscheme base16-eighties
" colorscheme Tomorrow-Night-Eighties
"colorscheme solarized
let g:airline_theme="base16_eighties"

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*


" let g:syntastic_javascript_eslint_exe = '[ -f $(npm bin)/eslint  ] && $(npm bin)/eslint || eslint'
" let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint --ignore-path .gitignore'
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_debug = 3

"rainbow parentheses
let g:rainbow_active = 1

" parens
let g:AutoPairsMapSpace = 0

set lines
set number
set showcmd
set breakindent
set pastetoggle=<F7>
:highlight LineNr cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
let mapleader = ","
let g:mapleader = ","
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.swo

" ctrl+p ignore gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Tabs and Spaces
" set backspace=2
" set tabstop=4
" set shiftwidth=4
set backspace=indent,eol,start
set list listchars=tab:»·,trail:· " detect trailing whitespace

" Cursor change
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  set guicursor+=i:blinkwait0
endif

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  set guicursor+=i:blinkwait0
endif

" Tagbar
nmap <leader>tt :TagbarToggle<CR>

"set markdown syntax
autocmd BufRead,BufNew *.md set filetype=markdown

" :UltiSnipsAddFiletypes liquid.html
autocmd BufEnter,BufNew *.liquid setf liquid.html
autocmd BufNewFile,BufRead *.liquid :UltiSnipsAddFiletypes liquid.html

" :UltiSnipsAddFiletypes
" autocmd BufEnter,BufNew *.hbs setf hbs.html
autocmd BufNewFile,BufRead *.hbs :UltiSnipsAddFiletypes hbs.html
autocmd BufNewFile,BufRead *.js :UltiSnipsAddFiletypes js.html

nmap <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 40

let g:jsdoc_input_description = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_enable_es6 = 1
let g:jsdoc_access_descriptions = 2

" Move Lines Up/Down
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

"Remap move between splits
nnoremap <C-Up> <C-W><C-J>
nnoremap <C-Down> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Clojure
let g:vimclojure#HighlightBuiltins = 1

" js
let g:vim_jsx_pretty_colorful_config = 1
let javascript_enable_domhtmlcss = 1
let g:used_javascript_libs = 'jquery,underscore,chai,handlebars'

" jshint
" let jshint2_save = 1

let g:pencil#wrapModeDefault = 'soft'   " or 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Remap snippets and ycm
let g:ycm_key_list_select_completion = ['<C-s>', '<C-Space>']
let g:ycm_key_list_previous = ['<C-n>']
let g:mustache_abbreviations = 1
let g:clang_user_options='|| exit 0'
"set shortmess+=c

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <leader>p :call pdv#DocumentCurrentLine()<CR>

"Editor Config
let g:EditorConfig_core_mode = 'external_command'

"folds
set foldenable
set foldlevelstart=16
set foldmethod=indent
nnoremap <leader>, za

"Ag shortcut
nnoremap <leader>a :Ag!

"retab shortcut
nnoremap <leader>r :retab <CR>

"search
nnoremap <leader>s :%s/

"fix vimrc
nnoremap <leader>f :source ~/.vimrc <CR>

"lorem ipsum
nnoremap <leader>l :Loremipsum!

"save
nnoremap <leader>w :w <CR>

"open scratch
nnoremap <leader>S :Scratch <CR>

"jsdoc
nnoremap <leader>j :JsDoc <CR>


" hi clear SpellBad
" autocmd BufRead,BufNewFile *.md setlocal spell
" autocmd BufRead,BufNewFile *.txt setlocal spell
" hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red
