if has('gui')
    set guifont=Monospace\ 13
endif

function! SetApiKey(apikey)
    let g:netrw_http_xcmd = '-H apikey:' . a:apikey . ' -o'
endfunction

command! -nargs=+ SetApiKey call SetApiKey(<f-args>)


set noeb vb t_vb=

