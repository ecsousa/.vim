
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
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Wombat'

if has('python')
    NeoBundle 'OmniSharp/omnisharp-vim'

    if has('lua')
        NeoBundle 'Shougo/neocomplete.vim'
    endif
endif

