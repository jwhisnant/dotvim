 "things to do first
set nocompatible               " be iMproved
filetype off                   " required!

"switch to Vundle, now I get it ...
" set the runtime path to include Vundle and initialize
 "set rtp+=~/.vim/bundle/Vundle.vim
 "call vundle#begin()
call plug#begin('~/.vim/plugged')

" This file will contain plugins only ...
" let Vundle manage Vundle, required
" setup
"Plug 'gmarik/Vundle.vim'

Plug 'flazz/vim-colorschemes'

"shell
Plug 'vim-scripts/Conque-Shell'

" README files
Plug 'PratikBhusal/vim-grip'

"utility
Plug 'godlygeek/tabular'
Plug 'chrisbra/csv.vim'
Plug 'drmikehenry/vim-fixkey'

Plug 'mbbill/undotree'
Plug 'scrooloose/nerdcommenter'
Plug 'Wolfy87/vim-enmasse'
Plug 'samsonw/vim-task'
Plug 'tpope/vim-unimpaired'
Plug 'rking/ag.vim'
Plug 'mtth/scratch.vim'
Plug 'jmcantrell/vim-virtualenv'

" task
"Plug 'farseer90718/vim-taskwarrior'



" vcs
Plug 'git://repo.or.cz/vcscommand'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-surround'

" navigate
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'fholgado/minibufexpl.vim'
Plug 'majutsushi/tagbar'

"look and feel
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'ryanoasis/vim-webdevicons'

"lint and syntax highlighting
Plug 'mitsuhiko/vim-jinja'

"ale
Plug 'dense-analysis/ale'

" python-mode conflicts with jedi
"Plug 'tell-k/vim-autopep8'
"Plug 'nvie/vim-flake8'

"Plug 'andviro/flake8-vim'
Plug 'davidhalter/jedi-vim'

Plug 'plasticboy/vim-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'valloric/MatchTagAlways'
Plug 'pangloss/vim-javascript'

"ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'chrisgillis/vim-bootstrap3-snippets'

"Github integration
Plug 'mattn/webapi-vim'
"Plug 'jaxbot/github-issues.vim'
Plug 'vim-scripts/Gist.vim'

"mysql
" todo dadbod
Plug 'krisajenkins/vim-pipe'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/SQLComplete.vim' "doesnt seem to work

Plug 'alfredodeza/pytest.vim'
Plug 'nvie/vim-togglemouse'

" org
Plug 'jceb/vim-orgmode' " python based
Plug 'vim-scripts/utl.vim'
Plug 'vim-scripts/calendar.vim--Matsumoto'
Plug 'chrisbra/NrrwRgn'
Plug 'tpope/vim-speeddating'

Plug 'wikitopian/hardmode'

Plug 'godlygeek/tabular'
Plug 'weierophinney/argumentrewrap'

" All of your Plugs must be added before the following line
call plug#end()
filetype plugin indent on    " required
