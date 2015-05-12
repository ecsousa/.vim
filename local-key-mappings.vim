"My custom key mappings
"NOT TO be used by vim and VsVim

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')


nnoremap <TAB>t :tabnew<CR>
nnoremap <TAB>n :tabn<CR>
nnoremap <TAB>p :tabp<CR>
nnoremap <TAB>f :tabfirst<CR>
nnoremap <TAB>l :tablast<CR>
nnoremap <TAB>x :tabclose<CR>

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>u :<C-u>Unite -no-split<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>ge 0f:wy$:e <C-R>0<CR>:on<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
    " Play nice with supertab
    let b:SuperTabDisabled=1
    " Enable navigation with control-j and control-k in insert mode
    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

let s:cmd = 'nnoremap <leader>el :e ' . s:thisPath . '<cr>'
execute s:cmd

augroup MyLocalMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

