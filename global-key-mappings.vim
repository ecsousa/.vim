"My custom key mappings
"To be used by vim and VsVim

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

vnoremap G G$
nmap <SPACE> <SPACE>:noh<CR>

let s:cmd = 'nnoremap <leader>eg :tabnew<cr>:e ' . s:thisPath . '<cr>'
execute s:cmd

augroup MyGlobalMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

