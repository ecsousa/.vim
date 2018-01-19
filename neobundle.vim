let s:thisLocaltion = expand('<sfile>:h')
let s:plugins = s:thisLocaltion . '/plugins'

call neobundle#begin(s:plugins)

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tmhedberg/matchit'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'scrooloose/syntastic'
if !has('gui') && !has('nvim') && (has('win32') || has('win64'))
    NeoBundle 'godlygeek/csapprox'
endif
NeoBundle 'kongo2002/fsharp-vim'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-scripts/ScrollColors'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'fsharp/fsharpbinding', {'rtp': 'vim'}
NeoBundle 'oblitum/rainbow'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'honza/vim-snippets'
" NeoBundle 'tommcdo/vim-exchange'
" NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'diepm/vim-rest-console'
NeoBundle 'evanmiller/nginx-vim-syntax'
" NeoBundle 'ecsousa/vim-node', 'fix_netrw_gotofile'
" NeoBundle 'walm/jshint.vim'
" NeoBundle 'vim-jsbeautify'
" NeoBundle 'ahayman/vim-nodejs-complete'
" NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'fatih/vim-go'
NeoBundle 'martinda/Jenkinsfile-vim-syntax'
NeoBundle 'chriskempson/base16-vim'

if has('lua')
    " NeoBundle 'Shougo/neocomplete.vim'
endif

" Chef stuff
" NeoBundle 'MarcWeber/vim-addon-mw-utils'
" NeoBundle 'tomtom/tlib_vim'
" NeoBundle 'garbas/vim-snipmate'
" NeoBundle 'vadv/vim-chef'

if has('mac')
    " NeoBundle 'rizzatti/dash.vim'
endif

if (has('python'))
    "NeoBundle 'SirVer/ultisnips'
    " NeoBundle 'OmniSharp/omnisharp-vim'
endif

call neobundle#end()

filetype plugin indent on

if !has('nvim')
    NeoBundleCheck
endif

set laststatus=0

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

let s:cmd = 'nnoremap <leader>ev :e ' . s:thisPath . '<cr>'
execute s:cmd

augroup VundleMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

