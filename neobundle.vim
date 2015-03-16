let s:thisLocaltion = expand('<sfile>:h')
let s:plugins = s:thisLocaltion . '/plugins'

call neobundle#begin(s:plugins)

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'godlygeek/csapprox'
NeoBundle 'kongo2002/fsharp-vim'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'bling/vim-airline'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-scripts/ScrollColors'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'fsharp/fsharpbinding', {'rtp': 'vim'}
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'

" Chef stuff
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'vadv/vim-chef'

if has('mac')
    NeoBundle 'rizzatti/dash.vim'
endif

"if (has('python'))
"    NeoBundle 'OmniSharp/omnisharp-vim'
"endif

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set laststatus=2

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

let s:cmd = 'nnoremap <leader>ev :e ' . s:thisPath . '<cr>'
execute s:cmd

augroup VundleMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

