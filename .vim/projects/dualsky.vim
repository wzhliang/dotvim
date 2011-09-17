" Project specific settings
" Current project: dualskyplus

set ff=unix
set expandtab
set shiftwidth=4
set tabstop=4
set list
set tags+=$SOURCE_DIR/tags
set tags+=/proj/bskyb/users/wenzhil/xtvdvb/tags
set tw=120
" Use cscope as tagging program.
set cst
"set tags+=/proj/bskyb/users/wenzhil/LAL/tags
"set tags+=/home/wenzhil/work/old/pace/otv4000/otval/src/tags
"set tags+=/home/wenzhil/tmp/jpeg-12/tags

compiler st20_c
iab _warn DBG_WARN(( "", DBG_MODNAME, ".\n"));<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
iab _error DBG_ERROR(( "", DBG_MODNAME, ".\n"));<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
iab _info DBG_INFO(( "", DBG_MODNAME, ".\n"));<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
iab _entry DBG_ENTRY(( "", DBG_MODNAME, ".\n"));<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
iab _return DBG_RETURN(( "", DBG_MODNAME, ".\n"));<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

" run make, if there is any error, open the quickfix window
nmap <F9> :make\|cw<CR>
" For somereason, oldhead have to have this 
"imap <Del> <BS>

if $SOURCE_DIR != ''
    cs add $SOURCE_DIR/cscope.out $SOURCE_DIR
    cd $SOURCE_DIR
endif

"Add menu item for stub generator
nmenu Wode.new_func_bskyb :.! ~/.vim/newfunc_bskyb.pl<CR>

au BufEnter *.diff :set noacd | cd $SOURCE_DIR
au BufLeave *.diff :set acd
