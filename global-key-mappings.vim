"My custom key mappings
"To be used by vim and VsVim

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

vnoremap G G$
nnoremap <silent> <SPACE> <SPACE>:noh<CR>

vnoremap > >gv
vnoremap < <gv

inoremap <S-CR> <ESC>
inoremap <C-CR> <ESC>

nnoremap " '
vnoremap " '
onoremap " '
nnoremap ' "
vnoremap ' "

if has('win32') || has('win64')
  noremap <C-V>		"+gP
endif

let s:cmd = 'nnoremap <leader>eg :e ' . s:thisPath . '<cr>'
execute s:cmd

augroup MyGlobalMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

