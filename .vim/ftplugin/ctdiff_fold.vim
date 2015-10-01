" Vim folding file
" Language:	Diff patch
" Author:	Wenzhi Liang
" Last Change:	2004 Oct 06
" Version:	0.1

setlocal foldmethod=expr
setlocal foldexpr=GetDiffFold(v:lnum)
set fcl=all

function! GetDiffFold(lnum)
    " Determine folding level in Python source
    "
    let line = getline(a:lnum)
    let ind  = indent(a:lnum)

    " Ignore blank lines
    if line =~ '^diff'
        return 0
    elseif line =~ '^Only'
        return 0
    " cater for cleardiff format
    elseif line =~ '^*\+$'
        return 0
    elseif line =~ '^<<< file'
        return 0
    elseif line =~ '^>>> file'
        return 0
    elseif line =~ '^Hijacked'
        return 0
    elseif line =~ '^New'
        return 0
    else
        return 1
    endif

endfunction

