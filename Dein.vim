let s:thisLocaltion = expand('<sfile>:h')
let s:deinPath = s:thisLocaltion . '/dein'


if dein#load_state('~/.dein')
    call dein#begin('~/.dein')

    " Let dein manage dein
    " Required:
    call dein#add(s:deinPath)
    call dein#add('wsdjeg/dein-ui.vim')

    call dein#add('tpope/vim-dispatch')
    call dein#add('pangloss/vim-javascript')
    call dein#add('mxw/vim-jsx')
    if !has('gui') && !has('nvim') && (has('win32') || has('win64'))
        call dein#add('godlygeek/csapprox')
    endif
    call dein#add('kongo2002/fsharp-vim')
    call dein#add('PProvost/vim-ps1')
    call dein#add('Shougo/unite.vim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('Shougo/unite-outline')
    call dein#add('fsharp/fsharpbinding', {'rtp': 'vim'})
    call dein#add('tpope/vim-unimpaired')
    call dein#add('scrooloose/nerdtree')
    call dein#add('martinda/Jenkinsfile-vim-syntax')
    call dein#add('sjl/badwolf')
    call dein#add('kien/ctrlp.vim')
    call dein#add('wellle/targets.vim')
    call dein#add('itchyny/lightline.vim')
    call dein#add('moll/vim-node')

    if has('python') && filereadable($OMNISHARP_PATH)
        call dein#add('OmniSharp/omnisharp-vim')

        if has('lua')
            call dein#add('Shougo/neocomplete.vim')
        endif
    endif


    " Required:
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif


let s:thisPath = expand('<sfile>')
let s:thisFile = expand('<sfile>:t')

let s:cmd = 'nnoremap <leader>ev :e ' . s:thisPath . '<cr>'
execute s:cmd

augroup DeinMappings
    autocmd!

    let s:cmd = 'autocmd BufWritePost ' . s:thisFile . ' :source ' . s:thisPath
	execute s:cmd

augroup END

