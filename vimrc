set nocompatible
"filetype off

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

"Check OmniSharp load needed
"if filereadable(s:thisPath . '/plugins/omnisharp-vim/server/OmniSharp/bin/Debug/OmniSharp.exe') && has('python')
"    execute 'source' (s:thisPath . '/OmniSharp.vim')
"endif

execute 'source' (s:thisPath . '/global-key-mappings.vim')
execute 'source' (s:thisPath . '/local-key-mappings.vim')


if !empty($CONEMUBUILD)
  set term=xterm
  set termencoding=utf8
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
  normal! a
endif
set t_Co=256


if filereadable(globpath(&rtp, 'colors/af.vim'))
    colo af
else
    colo torte
endif

" setup gui interface
if has("gui_running")
    set guioptions-=T "remove toolbar
    set guioptions-=m "remove menu

    "Enable CTRL-A, CTRL-Y and CTRL-X
    silent! nunmap <C-A>
    silent! nunmap <C-Y>
    silent! nunmap <C-X>

    "Force menu to english
    source $VIMRUNTIME/delmenu.vim
    set langmenu=none
    let do_syntax_sel_menu = 1
    source $VIMRUNTIME/menu.vim
endif

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

if has("win32") || has("win16")
    "use TEMP dir for swap in windows
    set directory=%TEMP%
endif

" key mappings


" set default filetypes
augroup MyVimrc
    autocmd!
    autocmd BufNewFile,BufRead *.vb set ft=vbnet
    autocmd BufNewFile,BufRead *._ps1 set ft=ps1
    autocmd BufNewFile,BufRead *.ps1 set ft=ps1
    autocmd BufNewFile,BufRead *.psm1 set ft=ps1
    autocmd BufNewFile,BufRead *.msbuild set ft=xml
    autocmd BufNewFile,BufRead *.targets set ft=xml
    autocmd BufNewFile,BufRead *.properties set ft=xml
    autocmd BufNewFile,BufRead *.tasks set ft=xml
    autocmd BufNewFile,BufRead *.proj set ft=xml
    autocmd BufNewFile,BufRead *.props set ft=xml
    autocmd BufNewFile,BufRead *.build set ft=xml

    autocmd BufNewFile,BufRead *.wxi set ft=xml
    autocmd BufNewFile,BufRead *.wxs set ft=xml

    autocmd BufNewFile,BufRead COMMIT_EDITMSG set enc=utf8 ft=gitcommit
    autocmd BufNewFile,BufRead COMMIT_EDITMSG normal! gg
    autocmd BufNewFile,BufRead *.config set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.msbuild set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.targets set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.properties set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.proj set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.props set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.build set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.xml set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.wxi set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.wxs set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.nuspec set tabstop=2 shiftwidth=2 enc=utf8
    autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
augroup END

if has('gui') && (has('win32') || has('win64'))
    set encoding=utf8
    "let g:airline_powerline_fonts = 1
    set guifont=Consolas:h12:cANSI
"elseif empty($CONEMUBUILD)
    "Airline fonts wont work on ConEmu
    "let g:airline_powerline_fonts = 1
endif

"completely disable bells
if has('gui')
    set noeb novb
else
    set noeb vb t_vb=
endif

