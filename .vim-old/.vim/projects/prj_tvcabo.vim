" Project specific settings
" Current project: tvcabo

set ff=unix
set expandtab
set shiftwidth=4
set tabstop=4
set list
set tw=120
" Use cscope as tagging program.
" set cst
" turn of swap and backup. This seems to cause a sharing problem between XP and the 
" virtual machine.
set noswapfile
set nobackup

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
    set tags+=$SOURCE_DIR/tags
endif

"Add menu item for stub generator
nmenu Wode.new_func_bskyb :.! ~/.vim/newfunc_bskyb.pl<CR>

func! s:GetTopDir()
    let l:counter=1
    while l:counter < 10
        let l:line=getline(l:counter)
        "echo l:counter
        if l:line =~ "^SnapshotView"
            echo "Found line"
            let l:cwd=substitute(l:line, "^SnapshotView:", "", "")
            "let l:cwd = substitute("Hello", '^He', 'Nihao', '')
            "echo l:cwd
            "echo "hello"
            exe "lcd " . l:cwd
        endif
        let l:counter = l:counter+1
    endwhile
endfunc

au! BufEnter *.diff
au! BufEnter *.updt
au BufEnter *.diff :lcd $SOURCE_DIR
au BufEnter *.updt :call s:GetTopDir()

set noacd
