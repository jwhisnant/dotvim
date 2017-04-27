"things to do first
set nocompatible               " be iMproved
filetype off                   " required!

"load plugins - do this first
source $HOME/.vim/plugins.vim

"marsupials
set ttyfast

set encoding=utf-8 " utf-8

" Persistent undo.
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

 " Becomming root to save a document, just type `w!!`
cmap w!! %!sudo tee > /dev/null %

" fix E265 complaints # but this breaks 4 space indents
"let g:NERDSpaceDelims = 1

"show what I type
set showcmd 

set colorcolumn=

"Flake8 is a wrapper around these tools: PyFlakes,  pep8, Ned Batchelder’s McCabe script
"Available checkers: flake8 pep8 pyflakes pylint python
"Currently enabled checkers: python flake8 pylint
"I dont think I want mccabe
"let g:syntastic_python_checkers=['python', 'flake8', 'pylint', 'pyflakes', 'pep8']


"python-mode wants
filetype plugin indent on
syntax on

"CUSTOM USER SETTINGS
"Ultisnip contact info
"call custom#contact()
"" sql setup
"call custom#sqlsetup()

"" env for sql
"call custom#env()

"http://vim.wikia.com/wiki/PuTTY_numeric_keypad_mappings
"call custom#numpad()



"let g:snips_author=''
"let g:author=''
"let g:snips_email=''
"let g:email=''
"let g:snips_github=''
"let g:github=''

"
"256 colors http://robotsrule.us/vim/
"set t_Co=256

if has("autocmd")
  filetype plugin indent on
endif


"open folds first so that it does not zot blank lines

"
"
"F12 is mapped to MouseToggle

"normal keys - this might mess up quickfix
"nnoremap <space> za
"vnoremap <space> zf

"colors
set background=dark
color desert256v2
"color sorcerer
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
set fillchars=vert:\ ,fold:-            " Spaces are enough for vertical split separators.

set laststatus=2                        " Always show a status line
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

"mouse for resize window inside screen
set ttymouse=xterm2
"set mouse=n                             " Mice are wonderful, but only to resize my windows
set visualbell t_vb=
set backspace=2 " make backspace work like most other apps
set tabstop=4
set expandtab
set softtabstop=4
set number

"load key mappings and autocmds
source $HOME/.vim/maps_auto.vim


"load settings
source $HOME/.vim/settings.vim

"load functions
source $HOME/.vim/functions.vim
:call LoadDefaultMappings()


"set SQL DBext defaults
:let  g:dbext_default_history_size = 4096

"
"https://mutelight.org/dbext-the-last-sql-client-youll-ever-need
" MySQL
 "let g:dbext_default_profile_mysql_local ='type=MYSQL:user=clear:passwd=`cat $HOME/sql_pw.txt`:dbname=peoplesoft_files'

"" SQLite
 "let g:dbext_default_profile_sqlite_for_rails = 'type=SQLITE:dbname=/path/to/my/sqlite.db'
""
"" " Microsoft SQL Server
 "let g:dbext_default_profile_microsoft_production = 'type=SQLSRV:user=sa:passwd=whatever:host^=localhost'
""


" Minibufexplorer
"noremap <silent> <Leader>b :MBEOpen<CR>:MBEFocus<CR>
noremap <silent> <Leader><tab> :MBEbb<CR>

noremap <silent> <Leader>b iimport ipdb ; ipdb.set_trace()  #XXX BREAKPOINT<CR><esc> 

let g:miniBufExplorerAutoStart = 0          " Open MBE manually when needed.
let g:miniBufExplTabWrap = 1                " Don't break a minibuf tab across lines
"let g:miniBufExplBuffersNeeded = 4          " start later
let g:miniBufExplVSplit = 20                " Make minibuf explorer vertical
let g:miniBufExplBRSplit = 0                " Put window on left or upper
let g:did_minibufexplorer_syntax_inits = 1  " Use my colors.
let g:miniBufExplCycleArround = 1           " Cycle when doing buffer movement.
"let g:miniBufExplShowBufNumbers = 0         " Don't show buffer numbers.

"https://unix.stackexchange.com/questions/60189/how-to-search-the-current-word-in-all-opened-tabs-in-vim
"" enables to search in all open buffers with :Search <pattern>
"command! -nargs=1 Search call setqflist([]) | silent bufdo grepadd! <args> %
"nnoremap <left>  :cprev<cr>zvzz
"nnoremap <right> :cnext<cr>zvzz

"airline
"let g:airline_theme='simple'
"let g:airline_theme='raven'
"let g:airline_theme='dark'
"let g:airline_theme='ubaryd'
"let g:airline_theme='bubblegum'
"let g:airline_theme='wombat'
"let g:airline_theme='serene'
"
"
"stuff at the end ...

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


"YouCompleteMe
"let g:ycm_min_num_of_chars_for_completion = 2


" if not YCM dont map keys
"if v:version < '704' || !has('python')
    "function! g:UltiSnips_Complete()
        ""call UltiSnips_ExpandSnippet() "Deprecated UltiSnips_ExpandSnippet called. Please use UltiSnips#ExpandSnippet
        "call UltiSnips#ExpandSnippet()

        "if g:ulti_expand_res == 0
            "if pumvisible()
                "return "\<C-n>"
            "else
                ""Deprecated UltiSnips_JumpForwards called. Please use UltiSnips#JumpForwards.
                ""call UltiSnips_JumpForwards()
                "UltiSnips#JumpForwards()
                "if g:ulti_jump_forwards_res == 0
                "return "\<TAB>"
                "endif
            "endif
        "endif
        "return ""
    "endfunction"
    
" we need this here because of have .vimrc is loaded to get the above to work
"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

"endif

" should be if YCM, really
"if v:version < '704' || !has('python')
    "let g:UltiSnipsExpandTrigger="<c-j>"
    "let g:UltiSnipsJumpForwardTrigger="<c-j>"
    "let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"endif


"YCM and Ultisnips
"
"https://vimeo.com/93364612
"https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-15451411
"UltiSnips completion function that tries to expand a snippet. If there's no
"snippet for expanding, it checks for completion window and if it's
"shown, selects first element. If there's no completion window it tries to
"jump to next placeholder. If there's no placeholder it just returns TAB key 

" does not work, hacked the original
"let g:VCSCommandSplit='vertical'
"augroup VCSCommand
"    if &diff
"        au VCSCommand User VCSBufferCreated :wincmd L<cr>
"    endif
"augroup END

"http://www.sontek.net/blog/2011/05/07/turning_vim_into_a_modern_python_ide.html

au FileType python set omnifunc=pythoncomplete#Complete


" PHP
"autocmd FileType php :call LoadPhpMappings()

let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Execute the tests
 nmap <silent><Leader>tf <Esc>:Pytest file<CR>
 nmap <silent><Leader>tc <Esc>:Pytest class<CR>
 nmap <silent><Leader>tm <Esc>:Pytest method<CR>
 " cycle through test errors
 nmap <silent><Leader>tn <Esc>:Pytest next<CR>
 nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
 nmap <silent><Leader>te <Esc>:Pytest error<CR>
