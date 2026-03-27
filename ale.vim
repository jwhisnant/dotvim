"ale

"When to lint
let g:ale_lint_on_text_changed = 'never'   " never lint while typing
let g:ale_lint_on_insert_leave = 0         " don't lint when leaving insert
let g:ale_lint_on_save = 1                 " lint on write

" dont highlight things
"let g:ale_set_highlights = 0

"let g:ale_lint_on_save = 0
"let g:ale_lint_on_text_changed = 0
"let g:ale_lint_on_enter = 0
"let g:ale_lint_on_save = 1

"Dont fix on save by default
"let g:ale_fix_on_save = 0
let g:ale_fix_on_save = 1

" Disable virtual text (inline messages)
let g:ale_virtualtext_cursor = 0
let g:ale_virtualtext_prefix = ''
let g:ale_virtualtext = 0

" Use the global quickfix list (not per-window loclist)
let g:ale_set_quickfix = 1
let g:ale_set_loclist = 0

let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0


let g:ale_linters= {
    \    '*': ['remove_trailing_lines', 'trim_whitespace'],
    \    'javascript': ['eslint', 'prettier'],
    \    'python': ['flake8'],
    \    'sql': ['sqlfluff']
    \}

"\    'python': ['black', 'isort', 'autoimport'],

let g:ale_fixers = {
    \    '*': ['remove_trailing_lines', 'trim_whitespace'],
    \    'javascript': ['eslint', 'prettier'],
    \    'python': ['black', 'isort'],
    \    'sql': ['sqlfluff']
    \}
