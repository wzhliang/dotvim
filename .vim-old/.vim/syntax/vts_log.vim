" Vim syntax file
" Language:	vts log 
" Maintainer:	Wenzhi Liang <wzhliang_at_gmail.org>
" Last Change:	May 2007

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
" if version < 600
" syntax clear
" elseif exists("b:current_syntax")
" finish
" endif

syntax clear
syn match vtslog_Pass		'^PASS '
syn match vtslog_Comment	'^COMMENT '
syn match vtslog_Fail		'^FAIL .*'
syn match vtslogStart		'^START.*'
syn match vtslogEnd		'^END.*'

hi link vtslog_Pass		Keyword
hi link vtslog_Comment		Keyword
hi link vtslog_Fail		Error
hi link vtslogStart		Visual
hi link vtslogEnd		Visual


" let b:current_syntax = "vtslog"

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
