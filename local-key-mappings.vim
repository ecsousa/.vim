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
if exists("*unite#filters#matcher_default#use")
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
endif
nnoremap <leader>u :<C-u>Unite -no-split<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>

" Use C-O for opening help, and C-] does not work with pt-br keyboard
nnoremap <C-O> <C-]>

" Tip from VimCasts.org -- http://vimcasts.org/episodes/soft-wrapping-text/
vnoremap <A-j> gj
vnoremap <A-k> gk
vnoremap <A-4> g$
vnoremap <A-6> g^
vnoremap <A-0> g^
nnoremap <A-j> gj
nnoremap <A-k> gk
nnoremap <A-4> g$
nnoremap <A-6> g^
nnoremap <A-0> g^

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

