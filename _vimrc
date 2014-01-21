" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

" Set to the real home dir
let $HOME='G:\minienv\env\cygwin\home\Wener'
let $PATH.=';G:\minienv\env\cygwin\bin'
" 在 cygwin 中 使用 \ 路径时,需要设置这个值
let g:option_root_dir='G:\minienv\env\cygwin'

if filereadable(expand("~/.vim/vimrc"))
    let $MYVIMRC=expand("~/.vim/vimrc")
    source ~/.vim/vimrc
endif

au BufEnter * :call TryOtherRoot()
function! TryOtherRoot()
    if filereadable(expand('<afile>'))
        return 1
    endif
    " echo expand('<afile>').'file not found'
    if exists('g:option_root_dir')
        let l:fn=substitute(expand('<afile>'),'^/', g:option_root_dir,'')
        " echo 'try load '.l:fn

        bd
        exec 'e '.l:fn
    endif
endfunc
