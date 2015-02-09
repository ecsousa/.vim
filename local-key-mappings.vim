"My custom key mappings
"NOT TO be used by vim and VsVim

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

"inoremap <ESC> <NOP>

"inoremap <UP> <NOP>
"inoremap <DOWN> <NOP>
"inoremap <LEFT> <NOP>
"inoremap <RIGHT> <NOP>
"inoremap <HOME> <NOP>
"inoremap <END> <NOP>
"inoremap <PAGEUP> <NOP>
"inoremap <PAGEDOWN> <NOP>

let s:cmd = 'nnoremap <leader>el :tabnew<cr>:e ' . s:thisPath . '<cr>'
execute s:cmd

augroup MyLocalMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

