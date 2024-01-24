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
"

"
" vcs
"Plug 'airblade/vim-gitgutter' " use signify
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
"Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-webdevicons'
"Plug 'myusuf3/numbers.vim'

"lint and syntax highlighting
Plug 'scrooloose/syntastic'
Plug 'mitsuhiko/vim-jinja'

"ale
Plug 'dense-analysis/ale'

"Plug 'klen/python-mode' "we keep this mostly for breakpoint adding quickly
"Plug 'davidhalter/jedi-vim'
"Plug 'tell-k/vim-autopep8'
"Plug 'nvie/vim-flake8'
Plug 'andviro/flake8-vim'

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
Plug 'krisajenkins/vim-pipe'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/SQLComplete.vim' "doesnt seem to work

" tmux 14.04
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'kikijump/tslime.vim'
"Plug 'edkolev/tmuxline.vim'

Plug 'alfredodeza/pytest.vim'
Plug 'nvie/vim-togglemouse'

" org
Plug 'jceb/vim-orgmode' " python based
Plug 'vim-scripts/utl.vim'
Plug 'vim-scripts/calendar.vim--Matsumoto'
Plug 'chrisbra/NrrwRgn'
Plug 'tpope/vim-speeddating'

Plug 'wikitopian/hardmode'
"Plug 'hsitz/VimOrganizer' "emacs server meh
"Plug 'itchyny/calendar.vim'
"Plug 'mattn/calendar-vim'
"
Plug 'godlygeek/tabular'
Plug 'weierophinney/argumentrewrap'

"php
"Plug 'shawncplus/phpcomplete.vim'
"https://github.com/mjacobus/.dotfiles/blob/master/vim/plugins.vim
"
"
"Plug 'StanAngeloff/php.vim'
""Plug 'squizlabs/PHP_CodeSniffer' "does not download wth
"Plug 'phpmd/phpmd'
"Plug 'joonty/vim-phpunitqf'
""Plug 'joonty/vdebug'
"Plug 'tobyS/pdv'
"Plug 'othree/html5.vim'

"Plug 'captbaritone/better-indent-support-for-php-with-html'

"https://github.com/b4n/ctags/tree/better-php-parser

"maybe ...
"Plug 'marijnh/tern_for_vim.git' "js
"Plug 'ervandew/supertab'
"Plug 'jeffkreeftmeijer/vim-numbertoggle' " Relative numbers in normal mode
"


" All of your Plugs must be added before the following line
call plug#end()
filetype plugin indent on    " required

