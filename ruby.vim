setlocal regexpengine=1
setlocal noballooneval
setlocal foldmethod=manual
setlocal nocursorline
setlocal ttyfast
" setlocal lazyredraw

let b:netrw_nobeval = 1

" ruby only lint on save. it's super slow otherwise
let b:ale_fix_on_save = 1
let b:ale_lint_on_text_changed = 'never'
let b:ale_lint_on_enter = 0
let b:ale_enabled=0
