"backups
set directory=$HOME/tmp/
set backupdir=$HOME/tmp/backup
set undofile                " Save undos after file closes
set undodir=$HOME/tmp/undo " where to save undo histories
set undolevels=10000       " How many undos
set undoreload=100000        " number of lines to save for undo

"grip
let g:grip_on = 1
let g:grip_default_map = 0

""jedi
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "0"

"ctrlp
"create a cache to optomize and use ag
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"set wildignore+=*/env*,*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/vendor/*,*/\.git/*
"let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor\|'
let g:ctrlp_clear_cache_on_exit=0

" this will not work with wildcards above, must use glob
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:pep8_ignore="E501,W601,E265,E261"

"Syntastic
" disable, since we dont have an autoformatter
let g:syntastic_disabled_filetypes= ['php',]
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php',]

"let g:syntastic_ignore_files = ['\.py$'] "pymode instead
"let g:syntastic_python_checkers = ['python', 'pyflakes', 'pep8']
"let g:syntastic_debug = 1
"let g:pep8_ignore="E501,W601"
"
let g:syntastic_python_checkers = ['python', 'flake8', 'pep8']

let g:syntastic_python_flake8_args='--ignore=E702,E501,E265,E114,E116,E261,E262,E261' "ignore long lines and one-liners
let g:syntastic_python_pep8_args='--max-line-length option=120 --ignore=E702,E265,E114,E116,E261,E262,E261' "ignore one-liners and length=120

"let g:syntastic_always_populate_loc_list = 0 
let g:syntastic_auto_loc_list = 0 "do not open by location window, I will do it manually

"let g:syntastic_python_pyflakes_max_line_length=120
let g:syntastic_python_pep8_max_line_length=120

"let g:syntastic_python_pylint_post_args="--max-line-length=120"

"https://github.com/andviro/flake8-vim
let g:PyFlakeDisabledMessages = 'E116,E114,E501'


" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>" "YCM uses tab
let g:UltiSnipsJumpForwardTrigger="<tab>" "YCM uses tab
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"docstrings
let g:ultisnips_python_style='numpy'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" For full syntax highlighting:
"let python_highlight_all=1
"syntax on

"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_breakpoint_cmd = 'breakpoint()'


let g:autopep8_max_line_length=120 "E501
let g:autopep8_ignore="E24,W6,E702,E26,E265,E116"  "longlines and comments
let g:autopep8_disable_show_diff=1 "Disable show diff window
let g:autopep8_pep8_passes=10
"let g:syntastic_debug = 32

" Pymode
let g:pymode_lint = 0 "Turn off code checking
let g:pymode_options_colorcolumn = 0

" DIAF rope
" Complete keywords from not imported modules (could make completion slower)
let g:pymode_rope = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_project_root = '/dev/null/'
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_autoimport_modules = []
let g:pymode_rope_autoimport_import_after_complete = 0

" Normal settings
let g:pymode_options_max_line_length = 100
let g:pymode_folding = 1
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_motion = 1
let g:pymode_trim_whitespaces = 0
let g:pymode_lint_on_write = 0
"let g:pymode_lint_unmodified = 1 " check on save (every)
let g:pymode_syntax_string_formatting = 1
let g:pymode_syntax_string_format = 1
let g:pymode_syntax_string_templates = 1
let g:pymode_syntax_doctests = 1
let g:pymode_lint_cwindow = 0 "Auto open cwindow (quickfix) if any errors have been found

let NERDTreeIgnore = ['\.pyc$']

" Gist
" let g:gist_clip_command = 'pbcopy' "this is a Mac thing
 let g:gist_detect_filetype = 1
 let g:gist_post_private = 1

"Tagbar
let g:tagbar_width = 40
let g:tagbar_zoomwidth = 30
let g:tagbar_sort = 0                               " sort by order in file
let g:tagbar_show_visibility = 0
let g:tagbar_show_linenumbers = 0
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_iconchars = ['+', '-']


"set SQL DBext defaults
:let  g:dbext_default_history_size = 4096

"ale
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
         \   'python': ['black'],
     \}

