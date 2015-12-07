"things to do first
set nocompatible               " be iMproved
filetype off                   " required!

"switch to Vundle, now I get it ...
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" This file will contain plugins only ...
" let Vundle manage Vundle, required
" setup
Plugin 'gmarik/Vundle.vim'

"shell
Plugin 'vim-scripts/Conque-Shell.git'

"utility
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Wolfy87/vim-enmasse'
"Plugin 'farseer90718/vim-taskwarrior'
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
Plugin 'myusuf3/numbers.vim'

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

" org
Plugin 'jceb/vim-orgmode' " python based
Plugin 'vim-scripts/utl.vim'
Plugin 'vim-scripts/calendar.vim--Matsumoto'
Plugin 'chrisbra/NrrwRgn'
Plugin 'tpope/vim-speeddating'

Plugin 'wikitopian/hardmode'
"Plugin 'hsitz/VimOrganizer' "emacs server meh
"Plugin 'itchyny/calendar.vim'
"Plugin 'mattn/calendar-vim'
"
Plugin 'godlygeek/tabular'
Plugin 'weierophinney/argumentrewrap'

"php
"Plugin 'shawncplus/phpcomplete.vim'
"https://github.com/mjacobus/.dotfiles/blob/master/vim/plugins.vim
"
Plugin 'StanAngeloff/php.vim'
"Plugin 'squizlabs/PHP_CodeSniffer' "does not download wth
Plugin 'phpmd/phpmd'
Plugin 'joonty/vim-phpunitqf'
Plugin 'joonty/vdebug'
Plugin 'tobyS/pdv'
Plugin 'othree/html5.vim'

Plugin 'captbaritone/better-indent-support-for-php-with-html'
"https://github.com/b4n/ctags/tree/better-php-parser

"maybe ...
"Plugin 'marijnh/tern_for_vim.git' "js
"Plugin 'ervandew/supertab'
"Plugin 'jeffkreeftmeijer/vim-numbertoggle' " Relative numbers in normal mode
"




" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

