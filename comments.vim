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

"au FileType python set omnifunc=pythoncomplete#Complete


" PHP
"autocmd FileType php :call LoadPhpMappings()


