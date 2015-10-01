" Project specific settings
" Current project: stb100

set ff=unix
set expandtab
set shiftwidth=4
set tabstop=4
set list
set tw=120
setglob enc=latin1
" Use cscope as tagging program.
" set cst
" turn of swap and backup. This seems to cause a sharing problem between XP and the 
" virtual machine.
set noswapfile
set nobackup

" run make, if there is any error, open the quickfix window
" nmap <F9> :make\|cw<CR>
" For somereason, oldhead have to have this 
"imap <Del> <BS>

if $SOURCE_DIR != ''
    cs add $SOURCE_DIR/cscope.out $SOURCE_DIR
    "cd $SOURCE_DIR
    set tags+=$SOURCE_DIR/tags
endif

set acd
set makeprg=gmake
set cscopetag

au BufEnter *.cdl set ft=tcl

let g:DirDiffExcludes='.svn,CVS,*.o,*.a'
setglobal ignorecase

