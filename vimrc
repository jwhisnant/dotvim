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
"call add(g:pathogen_disabled, 'airline') "use the nedbat
call add(g:pathogen_disabled, 'powerline') "steep requirements,skip it
call add(g:pathogen_disabled, 'gist') "use Gist instead

"commented - we want to try tidy for xml with syntastic
let g:syntastic_ignore_files = ['\.py$'] "pymode instead

"infect
call pathogen#infect()
call pathogen#helptags()

"python-mode wants
filetype plugin indent on
syntax on

"CUSTOM USER SETTINGS
"Ultisnip contact info
call custom#contact()

"let g:snips_author=''
"let g:author=''
"let g:snips_email=''
"let g:email=''
"let g:snips_github=''
"let g:github=''

"
"256 colors http://robotsrule.us/vim/
set t_Co=256

if has("autocmd")
  filetype plugin indent on
endif

"hotkeys and rebindings
"function keys
noremap <F5> :GundoToggle<CR> 
noremap <F7> :PymodeLint<CR> 
noremap <F8> :PymodeLintAuto<CR> 

"normal keys
nnoremap <space> za
vnoremap <space> zf

"colors
set background=dark
color sorcerer
"color jellybeans
"color mango
"color ingretu
"color colorful256

"To highlight all search matches in a file, set the following option: 
set hlsearch

"If you prefer backspace and delete in Insert mode to have the old behavior,
"put this line in your vimrc:
inoremap ^? ^H

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

"set laststatus=2                        " Always show a status line
"let filestatus = ''
"let filestatus .= ' %1*%{&readonly ? "" : &modified ? " + " : &modifiable ? "" : " - "}%*'
"let filestatus .= '%3*%{&readonly ? (&modified ? " + " : " . ") : ""}%*'
"let filestatus .= '%{&readonly? "" : &modified ? "" : &modifiable ? "   " : ""}'
"let filestatus .= ' %<%f  '
"let filestatus .= '%2*%{tagbar#currenttag(" %s ", "", "f")}%*'
"let filestatus .= ' %{fugitive#statusline()}'
"let filestatus .= '%='
"let filestatus .= '%{strlen(&filetype) ? &filetype : "none"}'
"let filestatus .= ' [%{strpart(&fileencoding,0,1)}%{strpart(&fileformat,0,1)}]'
"let filestatus .= '%6l,%2c'
"let filestatus .= '  %P '
"let &statusline = filestatus

" Ultisnips
"let g:UltiSnipsExpandTrigger="<tab>" "YCM uses tab
"let g:UltiSnipsJumpForwardTrigger="<tab>" "YCM uses tab
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" For full syntax highlighting:
"let python_highlight_all=1
"syntax on

"let g:syntastic_python_checkers=['python', 'flake8', 'pylint', 'pyflakes', 'pep8']

set visualbell t_vb=
set backspace=2 " make backspace work like most other apps
set tabstop=4
set expandtab
set softtabstop=4
set number

" a python file is a python file ....
" I know this is silly but something with # as first char in a script things break
"au BufRead,BufNewFile *.py set filetype=python

"On file open and FileRead
au BufRead,BufNewFile *.md set filetype=markdown "silly modular

"
"python settings
au BufRead,BufNewFile *.py,*pyw set tabstop=4 expandtab softtabstop=4

" Dont expand tabs in C type files
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.c,*.h Makefile* set noexpandtab


" Highlight spaces and tabs as bad in python files
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/ "tabs bad beginning python lines


au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix " unix line ends

set encoding=utf-8 " utf-8

"Odd filetypes
"set up us the mapping of file types ..
au BufRead,BufNewFile *.zcml :set ft=xml 
au BufRead,BufNewFile *.kss :set ft=css

"" Number for the xml and zcml and pt files - seems to be 2 ...
au BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css setlocal nocompatible tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" options
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 100

" Pymode

"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe'] "default
"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint', 'pep257']

"
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

"E256 comma space "E702 oneliner
" todo - find a way to not bitch about these but still fix them with pep8
"let g:pymode_lint_ignore = "E702,E265"
"let g:pymode_breakpoint = 0 "\b is ok

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
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Minibufexplorer
noremap <silent> <Leader>b :MBEOpen<CR>:MBEFocus<CR>
noremap <silent> <Leader><tab> :MBEbb<CR>

"let g:miniBufExplorerAutoStart = 0          " Open MBE manually when needed.
let g:miniBufExplTabWrap = 1                " Don't break a minibuf tab across lines
let g:miniBufExplBuffersNeeded = 4          " start later
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

"https://unix.stackexchange.com/questions/60189/how-to-search-the-current-word-in-all-opened-tabs-in-vim
"" enables to search in all open buffers with :Search <pattern>
"command! -nargs=1 Search call setqflist([]) | silent bufdo grepadd! <args> %
"nnoremap <left>  :cprev<cr>zvzz
"nnoremap <right> :cnext<cr>zvzz

"YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 2

"YCM and Ultisnips
"
"https://vimeo.com/93364612
"https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-15451411
"UltiSnips completion function that tries to expand a snippet. If there's no
"snippet for expanding, it checks for completion window and if it's
"shown, selects first element. If there's no completion window it tries to
"jump to next placeholder. If there's no placeholder it just returns TAB key 

function! g:UltiSnips_Complete()
    "call UltiSnips_ExpandSnippet() "Deprecated UltiSnips_ExpandSnippet called. Please use UltiSnips#ExpandSnippet
    call UltiSnips#ExpandSnippet()

    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            "Deprecated UltiSnips_JumpForwards called. Please use UltiSnips#JumpForwards.
            "call UltiSnips_JumpForwards()
            UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction"

" we need this here because of have .vimrc is loaded to get the above to work
au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" does not work, hacked the original
"let g:VCSCommandSplit='vertical'
"augroup VCSCommand
"    if &diff
"        au VCSCommand User VCSBufferCreated :wincmd L<cr>
"    endif
"augroup END

"airline
"

let g:airline_theme='serene'
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
"let g:airline_detect_modified=1
"let g:airline_detect_paste=1
"let g:airline_detect_iminsert=0
"let g:airline_inactive_collapse=1
""let g:airline_powerline_fonts=1
"let g:airline_mode_map = {} " see source for the defaults
"let g:airline_exclude_filenames = [] " see source for current list
"let g:airline_exclude_filetypes = [] " see source for current list
"let g:airline_exclude_preview = 0
"let w:airline_disabled = 1

