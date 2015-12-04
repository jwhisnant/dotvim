"things to do first
set nocompatible               " be iMproved
filetype off                   " required!

"switch to Vundle, now I get it ...
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" let Vundle manage Vundle, required
" setup
Plugin 'gmarik/Vundle.vim'

"shell
Plugin 'vim-scripts/Conque-Shell.git'

"utility
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Wolfy87/vim-enmasse'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'samsonw/vim-task'
Plugin 'tpope/vim-unimpaired'
Plugin 'rking/ag.vim'
Plugin 'mtth/scratch.vim'
Plugin 'jmcantrell/vim-virtualenv'
"
" vcs
"Plugin 'airblade/vim-gitgutter' " use signify
Plugin 'git://repo.or.cz/vcscommand'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-surround'

" navigate
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'

"look and feel
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
"Plugin 'itchyny/lightline.vim'
Plugin 'ryanoasis/vim-webdevicons'

"lint and syntax highlighting
Plugin 'scrooloose/syntastic'
Plugin 'mitsuhiko/vim-jinja'

Plugin 'klen/python-mode' "we keep this mostly for breakpoint adding quickly
Plugin 'tell-k/vim-autopep8'

Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'valloric/MatchTagAlways'
Plugin 'pangloss/vim-javascript'

"ultisnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'chrisgillis/vim-bootstrap3-snippets'

"Github integration
Plugin 'mattn/webapi-vim'
Plugin 'jaxbot/github-issues.vim'
Plugin 'vim-scripts/Gist.vim'

"mysql
Plugin 'krisajenkins/vim-pipe'
Plugin 'vim-scripts/dbext.vim'
Plugin 'vim-scripts/SQLComplete.vim' "doesnt seem to work

" tmux 14.04
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'kikijump/tslime.vim'
Plugin 'edkolev/tmuxline.vim'

Plugin 'alfredodeza/pytest.vim'
Plugin 'nvie/vim-togglemouse'

" org mode
Plugin 'jceb/vim-orgmode' " python based
Plugin 'vim-scripts/utl.vim'
Plugin 'vim-scripts/calendar.vim--Matsumoto'
Plugin 'chrisbra/NrrwRgn'
Plugin 'tpope/vim-speeddating'

Plugin 'wikitopian/hardmode'
"Plugin 'hsitz/VimOrganizer' "emacs server meh
"Plugin 'itchyny/calendar.vim'
"Plugin 'mattn/calendar-vim'


Plugin 'godlygeek/tabular'
Plugin 'weierophinney/argumentrewrap'

source $HOME/php.vim

"maybe ...
"Plugin 'marijnh/tern_for_vim.git' "js
"Plugin 'ervandew/supertab'
"Plugin 'jeffkreeftmeijer/vim-numbertoggle' " Relative numbers in normal mode

"YouCompleteMe unavailable: requires Vim 7.3.584+
if v:version > '704' 
    Plugin 'Valloric/YouCompleteMe'
endif

" vim-javascript fix for old vims
 "if v:version < '704' 
    ":set regexpengine=1
    ":syntax enable
"endif

" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

" org mode
"let g:org_command_for_emacsclient = emacsclient

"marsupials
set ttyfast

" Persistent undo.
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

 " Becomming root to save a document, just type `w!!`
cmap w!! %!sudo tee > /dev/null %

" fix E265 complaints # but this breaks 4 space indents
"let g:NERDSpaceDelims = 1


"set colorcolumn=
"let g:pep8_ignore="E501,W601,E265, E261"
"||||||| merged common ancestors
"set colorcolumn=120
"let g:pep8_ignore="E501,W601,E265"
set showcmd 

set colorcolumn=
let g:pep8_ignore="E501,W601,E265"

"Syntastic
"let g:syntastic_ignore_files = ['\.py$'] "pymode instead
"let g:syntastic_python_checkers = ['python', 'pyflakes', 'pep8']
"let g:syntastic_debug = 1
"et g:pep8_ignore="E501,W601"
"
let g:syntastic_python_checkers = ['python', 'flake8', 'pep8']

let g:syntastic_python_flake8_args='--ignore=E702,E501,E265,E116,E261,E262,E261' "ignore long lines and one-liners
let g:syntastic_python_pep8_args='--max-line-length option=120 --ignore=E702,E265,E116,E261,E262,E261' "ignore one-liners and length=120

"let g:syntastic_always_populate_loc_list = 0 
let g:syntastic_auto_loc_list = 0 "do not open by location window, I will do it manually

"let g:syntastic_python_pyflakes_max_line_length=120
let g:syntastic_python_pep8_max_line_length=120

"let g:syntastic_python_pylint_post_args="--max-line-length=120"


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
call custom#contact()
" sql setup
call custom#sqlsetup()

" env for sql
call custom#env()

"http://vim.wikia.com/wiki/PuTTY_numeric_keypad_mappings
call custom#numpad()



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

"hotkeys and rebindings
"function keys

" Remove annoying F1 help.
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

"folding
:set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

noremap <F1> :MBEToggle<CR> 
noremap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
noremap <F5> :GundoToggle<CR> 
"noremap <F7> :PymodeLint<CR>  " we will let syntastic do this instead on file write
"
autocmd FileType python map <buffer> <F11> :call Autopep8()<CR>
"https://github.com/tell-k/vim-autopep8 map to a key we dont want to use ...

noremap <F8> zR<CR> :call Autopep8()<CR>
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
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'

set visualbell t_vb=
set backspace=2 " make backspace work like most other apps
set tabstop=4
set expandtab
set softtabstop=4
set number

" Orgmode requirements
"autocmd! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
"autocmd BufEnter *.org            call org#SetOrgFileType()

"On file open and FileRead
autocmd BufRead,BufNewFile *.md set filetype=markdown "silly modular
autocmd BufRead,BufNewFile *.python set filetype=python "python yu no highlight
autocmd BufNewFile,BufRead *.sql set filetype=sql

"python settings
autocmd BufRead,BufNewFile *.py,*pyw set tabstop=4 expandtab softtabstop=4

" Dont expand tabs in C type files
autocmd BufRead,BufNewFile *.py,*.pyw set expandtab
autocmd BufRead,BufNewFile *.c,*.h Makefile* set noexpandtab

" Highlight spaces and tabs as bad in python files
highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/ "tabs bad beginning python lines

autocmd BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix " unix line ends
set encoding=utf-8 " utf-8

"Odd filetypes
"set up us the mapping of file types ..
autocmd BufRead,BufNewFile *.zcml :set ft=xml 
autocmd BufRead,BufNewFile *.kss :set ft=css
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks setfiletype task

"" Number for the xml and zcml and pt files - seems to be 2 ...
autocmd BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css setlocal nocompatible tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"autopep8
"E702 - one liner with semicolons
"Do not fix these errors/warnings (default: E226,E24,W6)
"https://github.com/tell-k/vim-autopep8

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
nnoremap <silent> <Leader>t :TagbarToggle<CR>


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
noremap <silent> <Leader>b :MBEOpen<CR>:MBEFocus<CR>
noremap <silent> <Leader><tab> :MBEbb<CR>

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
let g:airline_theme='simple'
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
