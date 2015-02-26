"things to do first
set nocompatible               " be iMproved
filetype off                   " required!

"disable before infect
let g:pathogen_disabled = []

"YouCompleteMe unavailable: requires Vim 7.3.584+
if v:version < '704' || !has('python')
    call add(g:pathogen_disabled, 'YouCompleteMe')
endif

"deprecated or uninteresting
call add(g:pathogen_disabled, 'pyflakes-vim') "use pythonmode
call add(g:pathogen_disabled, 'unimpaired') "we dont need no stinkin brackets
call add(g:pathogen_disabled, 'syntastic') "pymode

"infect
call pathogen#infect()
call pathogen#helptags()

"python-mode wants
filetype plugin indent on
syntax on

"256 colors http://robotsrule.us/vim/
set t_Co=256

if has("autocmd")
  filetype plugin indent on
endif

"hotkeys and rebindings
noremap <F5> :GundoToggle<CR>
"check
noremap <F7> :PymodeLint<CR>
"fix
noremap <F8> :PymodeLintAuto<CR>

nnoremap <space> za
vnoremap <space> zf

"colors ka ka ka kolors
set background=dark
color sorcerer
"color jellybeans
"color mango
"color ingretu
"color colorful256

" does not work, hacked the original
"let g:VCSCommandSplit='vertical'
"augroup VCSCommand
"    if &diff
"        au VCSCommand User VCSBufferCreated :wincmd L<cr>
"    endif
"augroup END

set listchars=tab:>-,eol:$,trail:-      " When in show-all-chars mode (set list), use >-- for tabs.
set tabstop=8                           " Real tab characters take up 8 spaces
set softtabstop=4                       "   but indent by 4 when typing tab while editing.
set expandtab                           " Use spaces when hitting the tab key
set shiftwidth=4                        "   and shift by 4 spaces when indenting.
set shiftround                          " When indenting, round to a multiple of shiftwidth.
set autoindent                          " Pick the indent for a line from the previous line.
set nosmarttab                          " Tabs always means the same thing, don't be too smart.
set indentkeys=o,O                      " Only new lines should get auto-indented.

filetype plugin indent on               " Use the filetype to load syntax, plugins and indent files.
set hlsearch                            " Highlight search results in the file.
set autoread                            " Re-read a file if it changed behind vim's back.
set hidden                              " Allow a modified buffer to become hidden.
set nowrap                              " When I want to be confused by wrapped lines, I'll do it manually.
set linebreak                           "   but when I do wrap, I want word wrap, not character.
set display=lastline,uhex               " Display as much as possible of a last line, and ctrl chars in hex.
set ignorecase smartcase                " If all lower-case, match any case, else be case-sensitive
set virtualedit=onemore                 " One virtual character at the ends of lines, makes ^V work properly.
set noerrorbells                        " Don't ring the bell on errors
set visualbell t_vb=                    "   and don't flash either.
"set mouse=a                             " Mice are wonderful.
set fillchars=vert:\ ,fold:-            " Spaces are enough for vertical split separators.

set laststatus=2                        " Always show a status line
let filestatus = ''
let filestatus .= ' %1*%{&readonly ? "" : &modified ? " + " : &modifiable ? "" : " - "}%*'
let filestatus .= '%3*%{&readonly ? (&modified ? " + " : " . ") : ""}%*'
let filestatus .= '%{&readonly? "" : &modified ? "" : &modifiable ? "   " : ""}'
let filestatus .= ' %<%f  '
let filestatus .= '%2*%{tagbar#currenttag(" %s ", "", "f")}%*'
let filestatus .= ' %{fugitive#statusline()}'
let filestatus .= '%='
let filestatus .= '%{strlen(&filetype) ? &filetype : "none"}'
let filestatus .= ' [%{strpart(&fileencoding,0,1)}%{strpart(&fileformat,0,1)}]'
let filestatus .= '%6l,%2c'
let filestatus .= '  %P '
let &statusline = filestatus

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Snippets variables some things use these ...
let g:snips_author='James Whisnant'
let g:author='James Whisnant'
let g:snips_email='jwhisnant@gmail.com'
let g:email='jwhisnant@gmail.com'
let g:snips_github='https://github.com/jwhisnant'
let g:github='https://github.com/jwhisnant'

" For full syntax highlighting:
"let python_highlight_all=1
"syntax on

"let g:syntastic_python_checkers=['python', 'flake8', 'pylint', 'pyflakes', 'pep8']
" pylint unable to import  -yes so kick to kurb
"let g:syntastic_python_checkers=['python', 'pep8', 'flake8', 'pylint', 'pyflakes'] 
"'pyflakes' "'pylint'

set visualbell t_vb=
set backspace=2 " make backspace work like most other apps
set tabstop=4
set expandtab
set softtabstop=4
set number
set shiftwidth=4

" a python file is a python file ....
" I know this is silly but something with # as first char in a script things break
"au BufRead,BufNewFile *.py set filetype=python

"james python settings
au BufRead,BufNewFile *.py,*pyw set tabstop=4
au BufRead,BufNewFile *.py,*pyw set expandtab
au BufRead,BufNewFile *.py,*pyw set softtabstop=4

"If you prefer backspace and delete in Insert mode to have the old behavior,
"put this line in your vimrc:
inoremap ^? ^H

" Number of spaces to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: 8 spaces (pre-existing files) or 4 spaces (new files)
au BufRead,BufNewFile *.py,*pyw,*.js set shiftwidth=4
au BufRead *.c,*.h set shiftwidth=4
au BufNewFile *.c,*.h set shiftwidth=4

" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
" Python: 8
" C: 8

" Replace tabs with the equivalent number of spaces.
" Also have an au for Makefiles since they require hard tabs.
" Python: yes
" C: no
" Makefile: no
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.c,*.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

"au BufRead,BufNewFile *.xml,*.pt,*.zcml,*.kss,*.css set expandtab


" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"au BufRead,BufNewFile *.xml,*.pt,*.zcml match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
" Python: 79 
" C: 79

" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r

" Use UNIX (\n) line endings.
" Only used for new files so as to not force existing files to change their
" line endings.
" Python: yes
" C: yes
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix


" ----------------------------------------------------------------------------
" The following section contains suggested settings.  While in no way required
" to meet coding standards, they are helpful.

" Set the default file encoding to UTF-8: ``set encoding=utf-8``
set encoding=utf-8 
" Puts a marker at the beginning of the file to differentiate between UTF and
" UCS encoding (WARNING: can trick shells into thinking a text file is actually
" a binary file when executing the text file): ``set bomb``
"
"au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 
"set up us the mapping of file types ..
au BufRead,BufNewFile *.zcml :set ft=xml 
au BufRead,BufNewFile *.kss :set ft=css

"To highlight all search matches in a file, set the following option: 
set hlsearch

"" Number for the xml and zcml and pt files - seems to be 2 ...
au BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css set nocompatible
au BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css set tabstop=2
au BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css set shiftwidth=2
au BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css set softtabstop=2
au BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css set expandtab


"pymode
"let g:pymode = 0
"let g:pymode_lint = 0

"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe'] "default
"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint', 'pep257']

" options
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 100

" Complete keywords from not imported modules (could make completion slower)
" could take, like forever
""rope
"let g:pymode_rope = 0
"let g:pymode_rope_autoimport = 0
"let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_project_root = '/dev/null/'

"702 is the onliner
"et g:pep8_ignore="E702"
"
"
" Pymode
let g:pymode_folding = 0
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
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0

"E256 comma space
"E702 oneliner
let g:pymode_lint_ignore = "E702,E265"


"let g:pymode_breakpoint = 0 "\b is ok

"Tagbar
let g:tagbar_width = 40
let g:tagbar_zoomwidth = 30
let g:tagbar_sort = 0                               " sort by order in file
let g:tagbar_show_visibility = 0
let g:tagbar_show_linenumbers = 0
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_iconchars = ['+', '-']
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Minibufexplorer
noremap <silent> <Leader>b :MBEOpen<CR>:MBEFocus<CR>
noremap <silent> <Leader><tab> :MBEbb<CR>

"let g:miniBufExplorerAutoStart = 0          " Open MBE manually when needed.
let g:miniBufExplTabWrap = 1                " Don't break a minibuf tab across lines
let g:miniBufExplBuffersNeeded = 4          " start ASAP
let g:miniBufExplVSplit = 20                " Make minibuf explorer vertical
let g:did_minibufexplorer_syntax_inits = 1  " Use my colors.
let g:miniBufExplCycleArround = 1           " Cycle when doing buffer movement.
"let g:miniBufExplShowBufNumbers = 0         " Don't show buffer numbers.


" Custom formatters
if has("python")
    python << EOF_PY
import json, vim, sys

def pretty_xml(x):
    """Make xml string `x` nicely formatted."""
    # Hat tip to http://code.activestate.com/recipes/576750/
    import xml.dom.minidom as md
    new_xml = md.parseString(x.strip()).toprettyxml(indent=' '*2)
    return '\n'.join([line for line in new_xml.split('\n') if line.strip()])

def pretty_json(j):
    """Make json string `j` nicely formatted."""
    return json.dumps(json.loads(j), sort_keys=True, indent=4)

prettiers = {
    'xml':  pretty_xml,
    'json': pretty_json,
    }

def pretty_it(datatype):
    b = vim.current.buffer
    content = "\n".join(b)
    content = prettiers[datatype](content)
    b[:] = str(content).split('\n')
EOF_PY

    command! Pxml :python pretty_it('xml')
    command! Pjson :python pretty_it('json')
endif

