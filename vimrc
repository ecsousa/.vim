set nocompatible

let mapleader = '-'
let s:thisPath = expand('<sfile>:h')

if has("win32")
    source <sfile>:h/windows.vim
else
    source <sfile>:h/nix.vim
endif

filetype plugin indent on
syntax on

if !has('nvim')
    source <sfile>:h/configure-terminal-colors.vim

    if has("gui_running")
        source <sfile>:h/configure-gui.vim
    endif
endif

"Load NeoBundle
source <sfile>:h/load-neobundle.vim

"Check OmniSharp load needed
if has('python')
    source <sfile>:h/OmniSharp.vim
endif

source <sfile>:h/key-mappings.vim
source <sfile>:h/setup.vim
source <sfile>:h/file-types.vim
source <sfile>:h/plugins-config.vim

if filereadable(globpath(&rtp, 'colors/jellybeans.vim'))
	colo jellybeans
else
    colo torte
endif


