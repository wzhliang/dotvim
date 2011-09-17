" Project specific settings

set ff=unix
set expandtab
set shiftwidth=4
set tabstop=4
setglobal list
set tw=90
"setglob enc=latin1
" Use cscope as tagging program.
" set cst
" turn of swap and backup. This seems to cause a sharing problem between XP and the 
" virtual machine.
set noswapfile
set nobackup
set nowritebackup


nmap <F11> :cwindow<CR>
nmap <C-F11> :cclose<CR>


let SRCDIRs=[ "/work/nuig/src", "/work/biotector/", "/work/nuig/www"]
for d in SRCDIRs
    echo "Adding " . d
    exec "set tags+=" . d . "/tags"
    exec "cs add " . d . "/cscope.out " .  d
endfor

set acd
set cscopetag
set csto=1

au BufEnter Make* set ft=make

setglobal smartcase

let g:DirDiffExcludes=".svn,CVS,*.swp,*.exe,*.class,*.png,*.jpg,*.doc,*.o,*.a,.depend,*.ko,*.jar"

let g:verctrl_toolbar_4whom='svn'

if has("win32")
    set grepprg=ack\ -a
endif

nmenu Wode.Strip\ Kernel\ Message :%s,Jan.*kernel:,,g<CR>
nmenu Wode.Strip\ ANSI\ Escape :%s,\^\[\[\d\+m,,g<CR>

"iab wds Thread.dumpStack();
"iab wpr System.out.println("WWW:
iab prw printf("WWW: %s %s %ld.\n", __FILE__, __FUNCTION__, __LINE__ );
set grepprg=ack-grep
