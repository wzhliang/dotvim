scriptencoding utf-8

setlocal nolist

syn match vtslog_Pass	'^
syn match vtslog_Fail	'^

hi link vtslog_Pass		Keyword
hi link vtslog_Fail		Error

" vim: ts=8 sw=2