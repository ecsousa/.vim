"Set NeoBundle at runtimepath
execute ('set rtp+=' . expand('<sfile>:h') . '/plugins/neobundle.vim/')

source <sfile>:h/configure-neobundle.vim

let s:cmd = 'nnoremap <leader>ev :e ' . expand('<sfile>:h') . '/neobundle.vim <cr>'
execute s:cmd

augroup NeobundleMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost neobundle.vim :source ' . expand('<sfile>:h') . '/configure-neobundle.vim'
	execute s:cmd

augroup END


