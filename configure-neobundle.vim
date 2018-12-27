call neobundle#begin(expand('<sfile>:h') . '/plugins')
NeoBundleFetch 'Shougo/neobundle.vim'

source <sfile>:h/neobundle.vim

call neobundle#end()

if !has('nvim')
    NeoBundleCheck
endif
