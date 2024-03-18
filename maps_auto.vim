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

"defaults for all mappings
noremap <F1> :MBEToggle<CR>
nnoremap <silent> <Leader>t :TagbarToggle<CR>
noremap <silent> <Leader>b :MBEOpen<CR>:MBEFocus<CR>
noremap <silent> <Leader><tab> :MBEbb<CR>
nnoremap <silent> <Leader>s :call argumentrewrap#RewrapArguments()<CR>

" number
:set relativenumber

function! LoadDefaultMappings()
    silent !echo 'Setting Default Mappings'
    noremap <F2> :NERDTreeToggle<CR>
    nnoremap <F3> :NumbersToggle<CR>
    "nnoremap <F4> :NumbersOnOff<CR>
    " show classes
    "nmap <F4> :TagbarToggle<CR>
    "noremap <F5> :GundoToggle<CR>
    nnoremap <F5> :UndotreeToggle<cr>

   " autocmd FileType python
    "map <buffer> <F11> :call Autopep8()<CR>
    "fix to expand folds or autopep8 does the wrong thing
    "noremap <F8> zR<CR> :call Autopep8()<CR>
    "noremap <F8> zR<CR> :call PyFlakeAuto()<CR>

    " vim mouse F12
    nnoremap <silent> <Leader>t :TagbarToggle<CR>
endfunction


function! ClearDefaultMappings()
    silent !echo 'Cleared Default Mappings'
    noremap <F2> <nop>
    noremap <F3> <nop>
    noremap <F5> <nop>
    noremap <F8> <nop>
    noremap <F11> <nop>
    noremap <F12> <nop>
endfunction

function! LoadPhpMappings()
    silent !echo 'Setting PHP X-debug Mappings'
    call Vdebug_load_keymaps(g:vdebug_keymap)
endfunction

"let g:vdebug_keymap_defaults = {
"\    'run' : '<F5>',
"\    'run_to_cursor' : '<F9>',
"\    'step_over' : '<F2>',
"\    'step_into' : '<F3>',
"\    'step_out' : '<F4>',
"\    'close' : '<F6>',
"\    'detach' : '<F7>',
"\    'set_breakpoint' : '<F10>',
"\    'get_context' : '<F11>',
"\    'eval_under_cursor' : '<F12>',
"\    'eval_visual' : '<Leader>e'
"\}


"vim mouse"
"we have to edit that on our own ...

"noremap <F7> :PymodeLint<CR>  " we will let syntastic do this instead on file write

"https://github.com/tell-k/vim-autopep8 map to a key we dont want to use ...

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

" Number for the xml and zcml and pt files - seems to be 2 ...
autocmd BufRead,BufNewFile *.zcml,*.xml,*.pt,*.kss,*.css setlocal nocompatible tabstop=2 shiftwidth=2 softtabstop=2 expandtab
