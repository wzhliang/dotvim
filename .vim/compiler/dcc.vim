" Vim compiler file
" Compiler:	SGI IRIX 6.5 STMicroelectronics C (st20icc)
" Maintainer:	Wenzhi Liang<wenzhi.liang@s3group.com>
" Last Change:	2002 Feb 26

if exists("current_compiler")
  finish
endif
let current_compiler = "dcc"

set errorformat=\"%f\",\ line\ %l:
