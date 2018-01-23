set nocompatible
"filetype off

let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_prefer_global_sln = 0
let g:OmniSharp_timeout = 10
let g:OmniSharp_selector_ui = 'unite'

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

"Load NeoBundle
execute 'source' (s:thisPath . '/neobundle.vim')
filetype plugin indent on
"End NeoBundle

" execute 'source' (s:thisPath . '/neocomplete.vim')

"Check OmniSharp load needed
if has('python')
    " execute 'source' (s:thisPath . '/OmniSharp.vim')
endif

execute 'source' (s:thisPath . '/key-mappings.vim')

if !has('nvim')

    if &term =~ '256color'
        " disable Background Color Erase (BCE) so that color schemes
        " render properly when inside 256-color tmux and GNU screen.
        " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
        set t_ut=
    endif

    if !empty($CONEMUBUILD)
      set term=xterm
      set termencoding=utf8
      let &t_AB="\e[48;5;%dm"
      let &t_AF="\e[38;5;%dm"
      normal! a
      set termguicolors
    endif
    if !has('gui') && (has('win32') || has('win64'))
        set t_Co=256
    else
        set termguicolors
    endif
endif


if filereadable(globpath(&rtp, 'colors/badwolf.vim'))
    set background=dark
    " let base16colorspace=256 
    " colo base16-default-dark
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

"Enable CTRL-A, CTRL-Y and CTRL-X
silent! nunmap <C-A>
silent! nunmap <C-Y>
silent! nunmap <C-X>

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
set nofixeol
set backspace=indent,eol,start
set completeopt=menu

let NERDTreeQuitOnOpen=1

if has("win32") || has("win16")
    "use TEMP dir for swap in windows
    set directory=%TEMP%
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

if has('gui') && (has('win32') || has('win64'))
    unmap <C-F>
    iunmap <C-F>
    cunmap <C-F>
    unmap <C-H>
    iunmap <C-H>
    cunmap <C-H>


    set encoding=utf8
    "let g:airline_powerline_fonts = 1
    set guifont=Consolas:h12:cANSI
"elseif empty($CONEMUBUILD)
    "Airline fonts wont work on ConEmu
    "let g:airline_powerline_fonts = 1
endif

" Disable SnipMate snippets in UltiSnippets
let g:UltiSnipsEnableSnipMate = 0

" Set Vimfiler as defualt explorer
let g:vimfiler_as_default_explorer = 1
let g:jsx_ext_required = 0

"completely disable bells
if has('gui') && (has('win32') || has('win64'))
    set noeb novb
else
    set noeb vb t_vb=
endif

