set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'craigemery/vim-autotag'
" Plugin 'rking/ag.vim'
" Plugin 'mileszs/ack.vim'
" Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'reedes/vim-pencil'
Plugin 'chriskempson/base16-vim'
" Plugin 'majutsushi/tagbar'
Plugin 'jeetsukumaran/vim-buffergator'

" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" highlighting
Plugin 'timakro/vim-searchant'
" Plugin 'ivyl/vim-bling'

" linting
Plugin 'w0rp/ale'

" Marks
Plugin 'kshenoy/vim-signature'

Plugin 'editorconfig/editorconfig-vim'

"Clojure
" Plugin 'git@github.com:guns/vim-clojure-static.git'
" Plugin 'tpope/vim-fireplace'
" Plugin 'dgrnbrg/vim-redl'
" Plugin 'guns/vim-clojure-highlight'

"Parens
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'valloric/MatchTagAlways'

"Syntax
Plugin 'digitaltoad/vim-pug'
Plugin 'vim-ruby/vim-ruby'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'posva/vim-vue'
Plugin 'kchmck/vim-coffee-script'

" HTML5 syntax
Plugin 'othree/html5.vim'

"JS Syntax
Plugin 'othree/yajs.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'

" Rails
" Plugin 'tpope/vim-rails'

"Snippets
Plugin 'honza/vim-snippets'
Plugin 'firegoby/SASS-Snippets'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'tpope/vim-commentary'
Plugin 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/loremipsum'
Plugin 'SirVer/ultisnips'

"docblocks
Plugin 'heavenshell/vim-jsdoc' "js

" Plugin 'luochen1990/rainbow'
" Plugin 'eapache/rainbow_parentheses.vim'
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'junegunn/rainbow_parentheses.vim'

" Plugin '/usr/local/opt/fzf'
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required
:set autoread

let mapleader = ","
let g:mapleader = ","
noremap \ ,

" fuzzyfind
set rtp+=/usr/local/opt/fzf

" ------ colors, lines, and numbers ------ "

set t_Co=256
" let base16colorspace=256
" set termguicolors
set background=dark
" colorscheme base16-gruvbox-dark-pale
" colorscheme base16-gruvbox-dark-pale
colorscheme base16-eighties
let g:airline_theme="base16_eighties"
set nrformats=
set hlsearch

" if exists('$TMUX')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" endif

"rainbow parentheses
" au VimEnter * RainbowParentheses
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" let g:rainbow_active = 1
" let g:rainbow_conf = {
" \ 'separately': {
" \   'vue': 0,
" \ }
" \}

" :hi Cursor ctermfg=black ctermbg=black cterm=bold guifg=black guibg=black gui=bold

:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" autocmd BufEnter * :syntax sync fromstart

" tabs and buffers
set hidden
set laststatus=2
" let g:airline_extensions = []
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_section_y = ''
let g:airline_section_z = '%{g:airline_symbols.linenr} %#__accent_bold#%3l%#__restore__# :%3v'
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

let g:buffergator_display_regime = "basename"
let g:buffergator_show_full_directory_path = 0
let g:buffergator_split_size = 80
let g:buffergator_vsplit_size = 80

" split preview window below
set splitbelow

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>qb :bp <BAR> bd #<CR>

" Show all open buffers and their status
" nmap <leader>bl :ls<CR>
nmap gl :bnext<CR>
nmap gh :bprevious<CR>

" parens
" let g:AutoPairsMapSpace = 1
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

set lines
set number
" set showcmd
set breakindent
set pastetoggle=<F7>

" set cursorline

" :highlight Search cterm=NONE ctermfg=Black ctermbg=LightGray gui=NONE guifg=Black guibg=LightGray
" :highlight SearchCurrent cterm=NONE ctermfg=Black ctermbg=Yellow gui=NONE guifg=Black guibg=Yellow
" :highlight LineNr cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" hi Search guibg=Blue guifg=Red

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.swo

" ctrl+p ignore gitignore
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" vue init webpack my-project" let g:ctrlp_user_command = {
"   'types': {
"     1: ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'],
"     2: 'find %s -type f | grep -v -P "\.jpg$|/tmp/"',
"   }
" }


" Tabs and Spaces
" set backspace=2
" set tabstop=4
" set shiftwidth=4
set backspace=indent,eol,start
set list listchars=tab:»·,trail:· " detect trailing whitespace

" Cursor change
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  set guicursor+=i:blinkwait0
endif

" nerdtree colors
" :hi Directory guifg=#FF0000 ctermfg=red
" let g:ale_set_highlights = 0
highlight ALEWarningSign term=underline cterm=underline ctermfg=1 gui=underline guifg=Yellow
highlight ALEErrorSign term=underline cterm=underline ctermfg=1 gui=underline guifg=Red
" highlight ALEErrorSign ctermbg=NONE ctermfg=red
" highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_fixers = {
  \ 'typescript': ['prettier'],
  \ 'vue': ['prettier'],
  \ 'javascript': ['prettier'],
  \ 'css': ['prettier'],
\ }

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_ER = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  set guicursor+=i:blinkwait0
endif

" let g:bling_time = 8
" let g:bling_color_fg = 'blue'
" let g:bling_color_bg = 'orange'

" Tagbar
" nmap <leader>tt :TagbarToggle<CR>

"set markdown syntax
autocmd BufRead,BufNew *.md set filetype=markdown

" vue syntax
" autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1
au BufEnter *.vue syn sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue
" autocmd BufRead,BufNew *.vue set filetype=vue
" autocmd BufRead,BufNewFile *.vue set ft=javascript
" autocmd FileType vue setlocal commentstring=\/\/\ %s
" autocmd BufReadPre *.vue let b:javascript_lib_use_vue = 1
" autocmd BufRead,BufNewFile *.vue syntax sync fromstart
" autocmd FileType vue syntax sync fromstart
" autocmd BufRead,BufNew *.html set filetype=vue

let g:ft = ''
fu! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        let syn = tolower(syn)
        exe 'setf '.syn
      endif
    endif
  endif
endfu
fu! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    g:ft
  endif
endfu

" match parens
" let g:mta_use_matchparen_group = 1

" js libraries
let g:used_javascript_libs = 'vue,chai,underscore'

nmap <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 60

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

" speed up switch cursor shapes
" inoremap <special> <Esc> <Esc>

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Clojure
let g:vimclojure#HighlightBuiltins = 1

" js
" let g:vim_jsx_pretty_colorful_config = 1
let javascript_enable_domhtmlcss = 1
let g:used_javascript_libs = 'jquery,underscore,chai,handlebars'

let g:pencil#wrapModeDefault = 'soft'   " or 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Remap snippets and ycm
" let g:ycm_key_list_select_completion = ['<C-s>', '<C-Space>']
" let g:ycm_key_list_previous = ['<C-n>']
" let g:mustache_abbreviations = 1
" let g:clang_user_options='|| exit 0'
" let g:ycm_echo_current_diagnostic = 0
"set shortmess+=c

let g:UltiSnipsSnippetsDir="~/.vim/my-snippets/UltiSnips"
let g:UltiSnipsSnippetDirectories = ["my-snippets/UltiSnips", "UltiSnips"]

" :UltiSnipsAddFiletypes
autocmd BufNewFile,BufRead *.hbs :UltiSnipsAddFiletypes hbs.html
autocmd BufNewFile,BufRead *.js :UltiSnipsAddFiletypes javascript-mocha.javascript.es6.html
autocmd BufNewFile,BufRead *.html :UltiSnipsAddFiletypes javascript.html
autocmd BufNewFile,BufRead *.vue :UltiSnipsAddFiletypes javascript.html
autocmd BufNewFile,BufRead *.js.coffee :UltiSnipsAddFiletypes coffee
autocmd BufNewFile,BufRead *.rb :UltiSnipsAddFiletypes ruby.yardoc

" to make vim ruby faster
let g:ruby_path = system('echo $HOME/.rbenv/shims')

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" nnoremap <buffer> <leader>p :call pdv#DocumentCurrentLine()<CR>

"Editor Config
let g:EditorConfig_core_mode = 'external_command'

"folds
set foldenable
set foldlevelstart=8
set foldmethod=indent
nnoremap <leader>f za
nnoremap <leader>m zm
nnoremap <leader>r zr

" make vim faster?
set ttyfast
set lazyredraw
set norelativenumber
set nocursorline

"FZF shortcuts
nnoremap <leader>a :Ag<Enter>
nnoremap <C-p> :GFiles<Enter>
nnoremap <C-t> :Files<Enter>

"retab shortcut
" nnoremap <leader>r :retab <CR>

"search
nnoremap <leader>s :%s/

"fix vimrc
nnoremap <leader>F :source ~/.vimrc <CR>

"lorem ipsum
nnoremap <leader>L :Loremipsum!

"save
nnoremap <leader>w :w <CR>

"open scratch
" nnoremap <leader>S :Scratch <CR>

"jsdoc
nnoremap <leader>j :JsDoc <CR>

" Toggle paste mode
nnoremap <leader>p :setlocal paste! paste?<cr>


" hi clear SpellBad
" autocmd BufRead,BufNewFile *.md setlocal spell
" autocmd BufRead,BufNewFile *.txt setlocal spell
" hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red
