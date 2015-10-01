" Project specific settings

set ff=unix
set shiftwidth=4
set tabstop=8
setglobal list
set tw=80
"setglob enc=latin1
" Use cscope as tagging program.
" set cst
" turn of swap and backup. This seems to cause a sharing problem between XP and the 
" virtual machine.
set noswapfile
set nobackup
set nowritebackup


nmap <F11> :botright cwindow<CR>
nmap <C-F11> :cclose<CR>


if has('mac')
    let SRCDIRs=['/Users/wliang/work/zoomapp']
else
    let SRCDIRs=['/home/wenliang/work/zoomapp']
endif
"let SRCDIRs=['/data/work/Wenzhou/MHC_BuildTree']
for d in SRCDIRs
    "echo "Adding " . d
    exec "set tags+=" . d . "/tags"
    exec "cs add " . d . "/cscope.out " .  d
    exec "set path+=" . d
    exec "set cdpath+=" . d
endfor

set noacd
set cscopetag
set csto=1
"Highlight the 81s column
"set colorcolumn=81

au BufEnter Make* set ft=make
au BufEnter *.md set ft=markdown

setglobal smartcase

let g:DirDiffExcludes=".svn,CVS,*.swp,*.exe,*.class,*.png,*.jpg,*.doc,*.o,*.a,.depend,*.ko,*.jar"

let g:verctrl_toolbar_4whom='svn'

if has("win32")
    set grepprg=ack\ -a
endif

set grepprg=ag
nmap <F3> :grep <C-R><C-W>
exec "cd " . SRCDIRs[0]

"au BufEnter *.txt set spell
au BufEnter update* nmap <C-D> :!lastchange.sh <C-R><C-f><CR>
