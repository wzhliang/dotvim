" Project specific settings
" Current project: viasatca

set tags+=D:\Snapshots\viasatca_wenzhil_devel_view\viasatca\source\tags
cscope add D:\Snapshots\viasatca_wenzhil_devel_view\viasatca\source\cscope.out
set ff=unix
set expandtab
set shiftwidth=4
set tabstop=4
cd D:\Snapshots\viasatca_wenzhil_devel_view\viasatca\source
"nmap <F9> :call ParseDccError()<CR>
"nmap <C-F9> :call ParseGccoError()<CR>

func! ParseDccError()
    compiler dcc
    cf c:\temp\psosmake-err.txt
    copen
endf

func! ParseGccoError()
    compiler gcco
    cf c:\temp\gcco-err.txt
    copen
endf

ab DBE DBGENTRY(DBG_INFO\|DBG_, "");
ab DBR DBGRETURN(DBG_INFO\|DBG_, "");
ab DBI DBG(DBG_INFO\|DBG_, "");
ab DBW DBG(DBG_WARN\|DBG_, "");
ab DBX DBG(DBG_ERROR\|DBG_, "");
