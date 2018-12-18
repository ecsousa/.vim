set nocompatible

let mapleader = '-'

if has("win32") || has("win16")
    let s:baseVimrc = expand('$VIM/_vimrc')
else
    let s:baseVimrc = expand('$VIM/.vimrc')
endif

if filereadable(s:baseVimrc)
    execute 'source' s:baseVimrc
endif

let s:thisPath = expand('<sfile>:h')

"Set NeoBundle at runtimepath
execute ('set rtp+=' . s:thisPath . '/plugins/neobundle.vim/')

if has('python') && filereadable($OMNISHARP_PATH)
    let g:OmniSharp_server_path = $OMNISHARP_PATH
endif

"Load NeoBundle
execute 'source' (s:thisPath . '/neobundle.vim')
filetype plugin indent on
"End NeoBundle 
"Check OmniSharp load needed
if has('python') && filereadable($OMNISHARP_PATH)
    execute 'source' (s:thisPath . '/OmniSharp.vim')
endif

execute 'source' (s:thisPath . '/key-mappings.vim')

if !has('nvim')

    if !has('gui') && (has('win32') || has('win64'))
        if !empty($CONEMUBUILD)
            set term=xterm
            set termencoding=utf8
            let &t_AB="\e[48;5;%dm"
            let &t_AF="\e[38;5;%dm"
            normal! a
            if v:version >= 800
                set termguicolors
            endif
        endif
        set t_Co=256
    else
        if v:version >= 800
            set termguicolors
        endif
    endif

    if &term =~ '256color'
        " disable Background Color Erase (BCE) so that color schemes
        " render properly when inside 256-color tmux and GNU screen.
        " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
        set t_ut=
    endif

endif


if filereadable(globpath(&rtp, 'colors/badwolf.vim'))
    set t_ut=
    set background=dark
	let g:badwolf_darkgutter = 1
	let g:badwolf_tabline = 3
	let g:badwolf_html_link_underline = 0
	let g:badwolf_css_props_highlight = 1

	colo badwolf
else
    colo torte
endif


" setup gui interface
if !has('nvim')
    if has("gui_running")
        "Force menu to english
        source $VIMRUNTIME/delmenu.vim
        set langmenu=none
        let do_syntax_sel_menu = 1
        source $VIMRUNTIME/menu.vim

        set guioptions-=T "remove toolbar
        set guioptions-=m "remove menu
    endif
endif

"Map C-\ to C-], to fix issue with pt-br keyboard layout
silent! nnoremap <C-\> <C-]>

" use syntax highlight
syntax on

" setup preferences
set shiftwidth=4 tabstop=4
set nobackup
set noundofile
set nowritebackup
set nowrap
set ignorecase
set nu
set expandtab
set incsearch hlsearch
set hidden
set showcmd
set scrolloff=0
if v:version >= 800
    set nofixeol
endif
set backspace=indent,eol,start
set completeopt=menu
set laststatus=2
set clipboard=

" let NERDTreeQuitOnOpen=1

if has("win32") || has("win64")
    "use TEMP dir for swap in windows
    set directory=%TEMP%

    let s:curlrc = expand('~/.curlrc')
    if filereadable(s:curlrc)
        let g:netrw_http_xcmd = '-K' . s:curlrc . ' -o'
    endif
endif

" key mappings


" set default filetypes
augroup MyVimrc
    autocmd!
    autocmd BufNewFile,BufRead COMMIT_EDITMSG set ft=gitcommit
    autocmd BufNewFile,BufRead *.vb set ft=vbnet
    autocmd BufNewFile,BufRead *._ps1 set ft=ps1
    autocmd BufNewFile,BufRead *.msbuild set ft=xml
    autocmd BufNewFile,BufRead *.targets set ft=xml
    autocmd BufNewFile,BufRead *.properties set ft=xml
    autocmd BufNewFile,BufRead *.tasks set ft=xml
    autocmd BufNewFile,BufRead *.proj set ft=xml
    autocmd BufNewFile,BufRead *.props set ft=xml
    autocmd BufNewFile,BufRead *.build set ft=xml
    autocmd BufNewFile,BufRead *.wxi set ft=xml
    autocmd BufNewFile,BufRead *.wxs set ft=xml
    autocmd BufNewFile,BufRead **/.kube/config set ft=yaml
    autocmd BufNewFile,BufRead gitconfig set ft=gitconfig

    autocmd FileType gitcommit set enc=utf8 spell
    autocmd FileType gitcommit normal! gg

    autocmd FileType yaml,json,xml set tabstop=2 shiftwidth=2 enc=utf8
    autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

    autocmd FileType javascript,javascript.jsx set tabstop=2 shiftwidth=2

    autocmd FileType markdown set spell

    au BufReadCmd *.jar,*.xpi,*.docx,*.nupkg call zip#Browse(expand("<amatch>"))
    if has('gui') && (has('win32') || has('win64'))
        au GUIEnter * simalt ~x
    endif
augroup END

if mapcheck("<C-F>", "n") != ""
    nunmap <C-F>
endif

if mapcheck("<C-F>", "i") != ""
    iunmap <C-F>
endif

if mapcheck("<C-F>", "c") != ""
    cunmap <C-F>
endif

if mapcheck("<C-H>", "n") != ""
    nunmap <C-H>
endif

if mapcheck("<C-H>", "i") != ""
    iunmap <C-H>
endif

if mapcheck("<C-H>", "c") != ""
    cunmap <C-H>
endif

if mapcheck("<C-A>", "n") != ""
    nunmap <C-A>
endif

if mapcheck("<C-Y>", "n") != ""
    nunmap <C-Y>
endif

if mapcheck("<C-X>", "n") != ""
    nunmap <C-X>
endif


if has('gui')
    if (has('win32') || has('win64'))
        set encoding=utf8
        "let g:airline_powerline_fonts = 1
        set guifont=Consolas:h12:cANSI
    else 
        set guifont=Monospace\ 13
    endif
endif

" Disable SnipMate snippets in UltiSnippets
let g:UltiSnipsEnableSnipMate = 0

" Set Vimfiler as defualt explorer
let g:vimfiler_as_default_explorer = 1
let g:jsx_ext_required = 0


let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bin|obj)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"completely disable bells
if has('gui') && (has('win32') || has('win64'))
    set noeb novb
else
    set noeb vb t_vb=
endif

