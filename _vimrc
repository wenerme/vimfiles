" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:

" Set to the real home dir
let $HOME='G:\minienv\env\cygwin\home\Wener'
let $PATH.=';G:\minienv\env\cygwin\bin'
" 在 cygwin 中 使用相对路径时,需要设置这个值
let g:option_root_dir='G:\minienv\env\cygwin'

if filereadable(expand("~/.vim/vimrc"))
    let $MYVIMRC=expand("~/.vim/vimrc")
    source ~/.vim/vimrc
endif
