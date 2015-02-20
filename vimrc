set nocompatible
filetype off

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

"Set Vundle at runtimepath
execute ('set rtp+=' . s:thisPath . '/plugins/Vundle.vim')

"Check OmniSharp load needed
if filereadable(s:thisPath . '/plugins/omnisharp-vim/server/OmniSharp/bin/Debug/OmniSharp.exe') && has('python')
    execute 'source' (s:thisPath . '/OmniSharp.vim')
endif

"Load Vundle
execute 'source' (s:thisPath . '/vundle.vim')
"End Vundle

execute 'source' (s:thisPath . '/global-key-mappings.vim')
execute 'source' (s:thisPath . '/local-key-mappings.vim')

filetype plugin indent on

if !empty($CONEMUBUILD) 
  set term=xterm 
  let &t_AB="\e[48;5;%dm" 
  let &t_AF="\e[38;5;%dm" 
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

if has("win32") || has("win16")
    "use TEMP dir for swap in windows
    set directory=%TEMP%
endif

" key mappings

vnoremap > >gv
vnoremap < <gv

nmap <TAB><TAB> :NERDTreeCWD<CR>
nmap <TAB>q :NERDTreeClose<CR>
nmap <TAB>s :VimShellTab<CR>
nmap <TAB>t :tabnew<CR>
nmap <TAB>n :tabn<CR>
nmap <TAB>p :tabp<CR>
nmap <TAB>f :tabfirst<CR>
nmap <TAB>l :tablast<CR>
nmap <TAB>x :tabclose<CR>

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
    autocmd BufNewFile,BufRead *.fsx set ft=fs

    autocmd BufNewFile,BufRead *.wxi set ft=xml
    autocmd BufNewFile,BufRead *.wxs set ft=xml

    autocmd BufNewFile,BufRead COMMIT_EDITMSG set enc=utf8 ft=gitcommit
    autocmd BufNewFile,BufRead COMMIT_EDITMSG normal! gg
    autocmd BufNewFile,BufRead *.config set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.xml set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.wxi set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.wxs set tabstop=2 shiftwidth=2 enc=utf8
    autocmd BufNewFile,BufRead *.nuspec set tabstop=2 shiftwidth=2 enc=utf8
augroup END

" Multi cursor mapping

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-o>'

