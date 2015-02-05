"My custom key mappings
"To be used by vim and VsVim

let s:thisFile = expand('<sfile>')

let mapleader = '-'

inoremap <ESC> <NOP>

inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
inoremap <HOME> <NOP>
inoremap <END> <NOP>
inoremap <PAGEUP> <NOP>
inoremap <PAGEDOWN> <NOP>

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
nnoremap <leader><leader> :

let s:cmd = 'nnoremap <leader>ev :tabnew<cr>:e ' . s:thisFile . '<cr>'
execute s:cmd

let s:cmd = 'nnoremap <leader>rv :source ' . s:thisFile . '<cr>'
execute s:cmd

