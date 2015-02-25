"disable before infect
let g:pathogen_disabled = []
"YouCompleteMe unavailable: requires Vim 7.3.584+
if v:version < '704' || !has('python')
        call add(g:pathogen_disabled, 'YouCompleteMe')
    endif

call pathogen#infect()
call pathogen#helptags()

"256 colors http://robotsrule.us/vim/
set t_Co=8

set nocompatible               " be iMproved
filetype off                   " required!

if has("autocmd")
  filetype plugin indent on
endif

nnoremap <F5> :GundoToggle<CR>
noremap <F8> :PymodeLintAuto<CR>

nnoremap <space> za
vnoremap <space> zf

" Complete keywords from not imported modules (could make completion slower)
" could take, like forever
call pymode#default('g:pymode_rope_autoimport',0)
call pymode#default('g:pymode_rope_lookup_project',0)
call pymode#default('g:pymode_rope_project_root', '/dev/null/')
"call pymode#default('g:pymode_options_max_line_length', 100)
"let g:pymode_options_max_line_length="100" no worky

autocmd FileType python set colorcolumn=100

"setup vimdiff
highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=bg guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=bg guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Magenta gui=none guifg=bg guibg=Magenta

" more characters
set textwidth=100

" for set trace onliner
let g:pep8_ignore="E231"

"Do not fix these errors/warnings (default: E226,E24,W6)
let g:autopep8_ignore="E226,E24,W6,E231"

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Snippets variables
let g:snips_author='James Whisnant'
let g:author='James Whisnant'
let g:snips_email='jwhisnant@gmail.com'
let g:email='jwhisnant@gmail.com'
let g:snips_github='https://github.com/jwhisnant'
let g:github='https://github.com/jwhisnant'

" Pylint configuration file
"does not work
"let g:pymode_lint_config = '$HOME/pylint.rc'

" For full syntax highlighting:
let python_highlight_all=1
syntax on

let g:syntastic_python_checkers=['python', 'flake8', 'pylint', 'pyflakes', 'pep8']

" vimrc file for following the coding standards specified in PEP 7 & 8.
"
" To use this file, source it in your own personal .vimrc file (``source
" <filename>``) or, if you don't have a .vimrc file, you can just symlink to it
" (``ln -s <this file> ~/.vimrc``).  All options are protected by aus
" (read below for an explanation of the command) so blind sourcing of this file
" is safe and will not affect your settings for non-Python or non-C files.
"
"
" All setting are protected by 'au' ('au') statements.  Only files ending
" in .py or .pyw will trigger the Python settings while files ending in *.c or
" *.h will trigger the C settings.  This makes the file "safe" in terms of only
" adjusting settings for Python and C files.
"
" Only basic settings needed to enforce the style guidelines are set.
" Some suggested options are listed but commented out at the end of this file.

"james default settings
set background=dark
color evening
set visualbell t_vb=
set backspace=2 " make backspace work like most other apps
set tabstop=4
set expandtab
set softtabstop=4
set number

set shiftwidth=4

" a python file is a python file ....
" I know this is silly but something with # as first char in a script things break
au BufRead,BufNewFile *.py set filetype=python

"james python settings
au BufRead,BufNewFile *.py,*pyw set tabstop=4
"what does this do ??? - bad plan with our messed up tabs, etc
"au BufRead,BufNewFile *.py,*pyw set smarttab 
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

" no, we hates it
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

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

" Automatically indent based on file type: 
"filetype indent on
" Keep indentation level from previous line: ``set autoindent``
"set autoindent

" Folding based on indentation: 
set nofoldenable
"set foldmethod=syntax
" open all folds please
"set foldlevelstart=10
"set nocompatible
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set softtabstop=4

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

filetype plugin on

"If wanted, auto commenting can be disabled for all files with:
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" some javascript stuff
"cabbr js !js /home/cpc/bin/js/runjslint.js "`cat %`"
"cabbr js !js /home/cpc/bin/js/runjslint.js "`cat %`" \| /home/cpc/bin/js/format_lint_output.py

"set ofu=syntaxcomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python compiler pylint

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 
"let Tlist_Ctags_Cmd='/usr/bin/ctags'
"map T :TaskList<CR>
"map P :TlistToggle<CR>
"
""page templates configuration
"autocmd BufNewFile,BufRead *.pt,*.cpt,*.zpt setfiletype zpt
"autocmd FileType zpt set makeprg=zptlint\ %
"autocmd FileType zpt set errorformat=%+P***\ Error\ in:\ %f,%Z%*\\s\\,\ at\ line\ %l\\,\ column\ %c,%E%*\\s%m,%-Q

"augroup filetype
"  au BufWritePost,FileWritePost *.pt make
"  au BufWritePost,FileWritePost *.cpt make
"  au BufWritePost,FileWritePost *.zpt make
"augroup END
"
" folding
set foldmethod=indent

