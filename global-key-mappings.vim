"My custom key mappings
"To be used by vim and VsVim

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

let s:cmd = 'nnoremap <leader>ev :tabnew<cr>:e ' . s:thisPath . '<cr>'
execute s:cmd

augroup MyGlobalMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

let mapleader = '-'

inoremap <ESC> <NOP>

nnoremap <UP> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <RIGHT> <NOP>
nnoremap <HOME> <NOP>
nnoremap <END> <NOP>
nnoremap <PAGEUP> <NOP>
nnoremap <PAGEDOWN> <NOP>

vnoremap <UP> <NOP>
vnoremap <DOWN> <NOP>
vnoremap <LEFT> <NOP>
vnoremap <RIGHT> <NOP>
vnoremap <HOME> <NOP>
vnoremap <END> <NOP>
vnoremap <PAGEUP> <NOP>
vnoremap <PAGEDOWN> <NOP>

inoremap jk <ESC>
nnoremap <leader>= :


