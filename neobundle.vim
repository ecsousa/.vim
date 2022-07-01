
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
if !has('gui') && !has('nvim') && has('win32')  " && v:version < 800
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
" NeoBundle 'kien/ctrlp.vim'
NeoBundle 'wellle/targets.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'chrisbra/NrrwRgn'
" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim'}
" NeoBundle 'OmniSharp/omnisharp-vim'
" NeoBundle 'Quramy/vim-js-pretty-template'
" NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'Quramy/tsuquyomi'
" NeoBundle 'Valloric/YouCompleteMe'
" NeoBundle 'mattn/emmet-vim'
" NeoBundle 'burnettk/vim-angular'
" NeoBundle 'sbdchd/neoformat'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'solarnz/thrift.vim'
NeoBundle 'kevints/vim-aurora-syntax'

NeoBundle 'pangloss/vim-javascript'    " JavaScript support
NeoBundle 'leafgarland/typescript-vim' " TypeScript syntax
NeoBundle 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
NeoBundle 'jparise/vim-graphql'        " GraphQL syntax

NeoBundle 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
NeoBundle 'junegunn/fzf.vim' " needed for previews
NeoBundle 'neoclide/coc.nvim', {'branch': 'release'}
NeoBundle 'antoinemadec/coc-fzf', {'branch': 'release'}

let g:coc_global_extensions = [ 'coc-tsserver' ]

" if has('python') || has('python3')
    " NeoBundle 'OmniSharp/omnisharp-vim'
    " " NeoBundle 'w0rp/ale'
" 
    " if has('lua')
        " NeoBundle 'Shougo/neocomplete.vim'
    " endif
" endif

