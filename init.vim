" execute vimrc
let s:thisPath = expand('<sfile>:h')
execute 'source' (s:thisPath . '/vimrc')

