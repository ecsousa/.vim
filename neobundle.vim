let s:thisLocaltion = expand('<sfile>:h')
let s:plugins = s:thisLocaltion . '/plugins'

call neobundle#begin(s:plugins)

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
if !has('gui') && !has('nvim') && (has('win32') || has('win64') || v:version < 800)
    NeoBundle 'godlygeek/csapprox'
endif
NeoBundle 'kongo2002/fsharp-vim'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'fsharp/fsharpbinding', {'rtp': 'vim'}
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'martinda/Jenkinsfile-vim-syntax'
NeoBundle 'sjl/badwolf'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'wellle/targets.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'moll/vim-node'

if has('python') && filereadable($OMNISHARP_PATH)
    NeoBundle 'OmniSharp/omnisharp-vim'

    if has('lua')
        NeoBundle 'Shougo/neocomplete.vim'
    endif
endif

call neobundle#end()

filetype plugin indent on

if !has('nvim')
    NeoBundleCheck
endif

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

let s:cmd = 'nnoremap <leader>ev :e ' . s:thisPath . '<cr>'
execute s:cmd

augroup VundleMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
	execute s:cmd

augroup END

