let s:thisLocaltion = expand('<sfile>:h')

call vundle#begin()
let g:bundle_dir = s:thisLocaltion . '/plugins'

Plugin 'ecsousa/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/csapprox'
Plugin 'kongo2002/fsharp-vim'
Plugin 'kennethzfeng/vim-raml'
Plugin 'tpope/vim-dispatch'
Plugin 'bling/vim-airline'
Plugin 'PProvost/vim-ps1'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/ScrollColors'
Plugin 'eduardo-claudio/inquiry.vim'
Plugin 'Shougo/unite-outline'

if has('mac')
    Plugin 'rizzatti/dash.vim'
endif

if (has('python'))
    Plugin 'OmniSharp/omnisharp-vim'
endif

call vundle#end()

set laststatus=2

let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

let s:cmd = 'nnoremap <leader>ev :tabnew<cr>:e ' . s:thisPath . '<cr>'
execute s:cmd

augroup VundleMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
    execute s:cmd

augroup END

