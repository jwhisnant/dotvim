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

nnoremap <F3> :NumbersToggle<CR>
"nnoremap <F4> :NumbersOnOff<CR>

" show classes

"nmap <F4> :TagbarToggle<CR> 
noremap <F5> :GundoToggle<CR> 

"vim mouse"
"we have to edit that on our own ...

"noremap <F7> :PymodeLint<CR>  " we will let syntastic do this instead on file write
nnoremap <silent> <Leader>t :TagbarToggle<CR>

"https://github.com/tell-k/vim-autopep8 map to a key we dont want to use ...
autocmd FileType python map <buffer> <F12> :call Autopep8()<CR>

"fix to expand folds or autopep8 does the wrong thing
noremap <F8> zR<CR> :call Autopep8()<CR>

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

"Odd filetypes
"set up us the mapping of file types ..
autocmd BufRead,BufNewFile *.zcml :set ft=xml 
autocmd BufRead,BufNewFile *.kss :set ft=css
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks setfiletype task

"" Number for the xml and zcml and pt files - seems to be 2 ...
autocmd BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css setlocal nocompatible tabstop=2 shiftwidth=2 softtabstop=2 expandtab


