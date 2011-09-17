"
" FILE: doxygen.vim
"
" ABSTRACT: file and function comments with doxygen syntax
"
" Provides two abbreviations for inserting file and function comments.
"
" The function comment abbr tries to scan a function definition to extract
" the parameters and the return type. This "parse function" is not perfect
" and might result in error, but it's better than nothing ;-).
"
" Global Parameters are:
"
" - g:fullid                The name of the developer. 
" - g:DoxyDateFormat        The date format used for the file comment
"                           (parameter to strftime)
" - g:DoxyVoidParamString   What to use for a empty parameter list?
"
" AUTHOR: Ralf Schandl <schandl@de.ibm.com>
"   
" $Id: doxygen.vim,v 1.1 2000/12/27 12:01:24 rks Exp $
"   
" =============================================================================
"

" insert doxygen function header
iabbr _DFH <HOME><C-R>=DoxyFuncComment()<CR><ESC>XXi*<esc>?@brief<CR>A
" insert only parameter list (can be used if param list changed)
iabbr _DFHp <SPACE><C-R>=DoxyParamList()<CR>

" insert doxygen file header
iabbr _DMH <C-R>=DoxyFileComment()<CR><ESC>XXi*<esc>?@brief<CR>A

if !exists("g:fullid")
    let g:fullid = 'Developer name not set. Set it in "g:fullid"'
endif

if !exists("g:DoxyDateFormat")
    let g:DoxyDateFormat = '%a %b %d %T %Z %Y'
endif

if !exists("g:DoxyVoidParamString")
    "let g:DoxyVoidParamString = ""
    let g:DoxyVoidParamString = "@param void"
endif

" returns the text for a function comment
function! DoxyFuncComment()

    let C = "".
        \ "/**\n".
        \ "@brief\n".
        \ "\n".
        \  DoxyParamList() . "\n" .
        \ "\n".
        \ "@return " . CScanRet() . "\n".
        \ "\n".
        \ "@sideeffect " . "\n".
        \ "\n".
        \ "@execution " . "\n".
        \ "\n".
        \ "@note " . "\n ".
        \ "/"
    return C
endfunction

" returns the text part for the parameter list 
function! DoxyParamList()
    normal mz
    normal /(
    normal "ay%

    let p = CScanParam(@a)
    if p == ""
        let p = g:DoxyVoidParamString
    else
        let p = substitute(p, ',', "\n@param ", "g")
        let p = substitute(p, '^', "@param ", "g")
    endif
    normal `z
    return p
endfunction

" scans the parameter list and returns a comma separated list of the
" parameters
" This function is not a C syntax scanner, but only tries to do its best
" with regular expressions.
function! CScanParam(pl)
    let p = a:pl
    "echo "p1:<" . p . ">"
    if p =~ '^( *\(void\)\= *)$' || p =~ "^( *)$"
        let p = ""
    else
        " remove linebreaks in parameter list
        let p = substitute(p, "\n", ' ', "g")
        "echo "p2:<" . p . ">"
        " replace multiple spaces with one space and remove spce before
        " commas
        let p = substitute(p, '\s\s*', ' ', "g")
        let p = substitute(p, '\s,', ',', "g")
        "echo "p3:<" . p . ">"
        " remove types
        let p = substitute(p, '[^,]\S* \=\(const \)\=\** \(const \)\=\**\(\S*[,)]\)', '\3', "g")
        "echo "p4:<" . p . ">"
        " if functions pointer parameter, remove parameter list
        let p = substitute(p, ').*),', "),", "g")
        let p = substitute(p, ').*))$', "))", "g")
        "echo "p4a:<" . p . ">"
        " remove leading and trailing brackets
        let p = substitute(p, '^(', "", "")
        let p = substitute(p, ')$', "", "")
        "echo "p5:<" . p . ">"
    endif
    "echo "p6:<" . p . ">"

    return p
endfunction

" returns the returntype of a function
" This function is not fail save!
function! CScanRet()
    normal mz
    normal /(B
    let c = col(".")
    if c == 1
        normal k
    endif
    let l = getline(".")

    let l = substitute(l, '\s\s*', ' ', "g")
    let l = substitute(l, '^\s*\(virtual \|static \|const \)* *\(\S* *\**\).*$', '\2', "")
    
    'z
    return l
endfunction

" returns the text for a function comment
function! DoxyFileComment()
    let C = '' .
        \ "/*!\n" .
        \ "@file " . expand('%:p:t') . "\n" .
        \ "\n" .
        \ "@brief\n" .
        \ "\n" .
        \ "\n$" . "Id$" .
        \ "\n" .
        \ "\n@author " . g:fullid . "\n" .
        \ "@date   " . strftime(g:DoxyDateFormat) . "\n" .
        \ "/" 
    return C
endfunction

"    vim:tw=75 et ts=4 sw=4 sr ai comments=\:\" formatoptions=croq 
"
"---------[ END OF FILE doxygen.vim ]------------------------------------------
