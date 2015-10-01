set nocompatible
let s:cpo_save=&cpo
set cpo&vim
map! <xHome> <Home>
map! <xEnd> <End>
map! <S-xF4> <S-F4>
map! <S-xF3> <S-F3>
map! <S-xF2> <S-F2>
map! <S-xF1> <S-F1>
map! <xF4> <F4>
map! <xF3> <F3>
map! <xF2> <F2>
map! <xF1> <F1>
map! <S-Insert> *
imap <C-PageDown> L$
imap <C-PageUp> H
vmap  "*d
nmap   i_r
map ,d :s/^\([/(]\*\|<!--\) \(.*\) \(\*[/)]\|-->\)$/\2/
map ,< :s/^\(.*\)$/<!-- \1 -->/
map ,( :s/^\(.*\)$/\(\* \1 \*\)/
map ,* :s/^\(.*\)$/\/\* \1 \*\//
map ,c :s/^\/\/\|^--\|^> \|^[#"%!;]//
map ,- :s/^/--/
map ,; :s/^/;/
map ,! :s/^/!/
map ,% :s/^/%/
map ," :s/^/\"/
map ,> :s/^/> /
map ,/ :s/^/\/\//
map ,# :s/^/#/
nmap \hs :call HideAll()
map \mm <Plug>ShowmarksShowMarksPlaceMark
map \ma <Plug>ShowmarksShowMarksHideAll
map \mh <Plug>ShowmarksShowMarksHideMark
map \mt <Plug>ShowmarksShowMarksToggle
map \bs <Plug>SplitBufExplorer
map \be <Plug>StartBufExplorer
map \[s <Plug>HMBStop
map \[i <Plug>HMBStart
map \di <Plug>LoadDrawIt
vmap \Htd :<BS><BS><BS>
vmap \tt :<BS><BS><BS>
vmap \tp@ :<BS><BS><BS>
vmap \tsp :<BS><BS><BS>
vmap \tab :<BS><BS><BS>
vmap \t@ :<BS><BS><BS>
vmap \t? :<BS><BS><BS>
vmap \t= :<BS><BS><BS>
vmap \t< :<BS><BS><BS>
vmap \t; :<BS><BS><BS>
vmap \t: :<BS><BS><BS>
vmap \t, :<BS><BS><BS>
vmap \t| :<BS><BS><BS>
vmap \afnc :<BS><BS><BS>
vmap \adef :<BS><BS><BS>
vmap \adec :<BS><BS><BS>
vmap \ascom :<BS><BS><BS>
vmap \acom :<BS><BS><BS>
vmap \abox :<BS><BS><BS>
vmap \a, :<BS><BS><BS>
vmap \a? :<BS><BS><BS>
vmap \Tsp :<BS><BS><BS>
vmap \T@ :<BS><BS><BS>
vmap \T= :<BS><BS><BS>
vmap \T< :<BS><BS><BS>
vmap \T: :<BS><BS><BS>
vmap \T, :<BS><BS><BS>
vmap \T| :<BS><BS><BS>
map \tW@ :AlignCtrl mWp1P1=l @
nmap \t@ :AlignCtrl mIp1P1=l @
omap \t@ :AlignCtrl mIp1P1=l @
map \t~ \WS:AlignCtrl mIp0P0=l ~
nmap \tt \WS:AlignCtrl mIp1P1=l & \\\\
omap \tt \WS:AlignCtrl mIp1P1=l & \\\\
nmap \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/
omap \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/
nmap \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/
omap \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/
nmap \t? \WS:AlignCtrl mIp0P0=l ?
omap \t? \WS:AlignCtrl mIp0P0=l ?
nmap \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
omap \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
nmap \t< \WS:AlignCtrl mIp0P0=l <
omap \t< \WS:AlignCtrl mIp0P0=l <
nmap \t; \WS:AlignCtrl mIp0P0=l ;
omap \t; \WS:AlignCtrl mIp0P0=l ;
nmap \t: \WS:AlignCtrl mIp1P1=l :
omap \t: \WS:AlignCtrl mIp1P1=l :
nmap \t, \WS:AlignCtrl mIp0P1=l ,
omap \t, \WS:AlignCtrl mIp0P1=l ,
map \t# \WS:AlignCtrl mIp0P0=l #
nmap \t| \WS:AlignCtrl mIp0P0=l |
omap \t| \WS:AlignCtrl mIp0P0=l |
map \T~ \WS:AlignCtrl mIp0P0=r ~
nmap \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/
omap \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/
map \Tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/
nmap \T@ \WS:AlignCtrl mIp0P0=r @
omap \T@ \WS:AlignCtrl mIp0P0=r @
map \T? \WS:AlignCtrl mIp0P0=r ?
nmap \T= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
omap \T= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
nmap \T< \WS:AlignCtrl mIp0P0=r <
omap \T< \WS:AlignCtrl mIp0P0=r <
map \T; \WS:AlignCtrl mIp0P0=r ;
nmap \T: \WS:AlignCtrl mIp1P1=r :
omap \T: \WS:AlignCtrl mIp1P1=r :
nmap \T, \WS:AlignCtrl mIp0P1=r ,
omap \T, \WS:AlignCtrl mIp0P1=r ,
map \T# \WS:AlignCtrl mIp0P0=r #
nmap \T| \WS:AlignCtrl mIp0P0=r |
omap \T| \WS:AlignCtrl mIp0P0=r |
nmap \Htd \WS:'y,'zs%<TR><TD[^>]\{-}>\|</TD><TD[^>]\{-}>\|</TD></TR>%@&@%g
omap \Htd \WS:'y,'zs%<TR><TD[^>]\{-}>\|</TD><TD[^>]\{-}>\|</TD></TR>%@&@%g
nmap \adef \WS:'a,.s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e
omap \adef \WS:'a,.s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e
nmap \adec \WS:'a,'zs/\([^ \t/]\)\([*&]\)/\1 \2/e
omap \adec \WS:'a,'zs/\([^ \t/]\)\([*&]\)/\1 \2/e
nmap \ascom \WS:'a,.s/\/[*/]/@&@/e
omap \ascom \WS:'a,.s/\/[*/]/@&@/e
nmap \acom \WS:'a,.s/\/[*/]/@&@/e
omap \acom \WS:'a,.s/\/[*/]/@&@/e
nmap \abox \WS:let b:iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e')
omap \abox \WS:let b:iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e')
nmap \a, \WS:'y,'zs/\(.\)\s\+/\1 /g
omap \a, \WS:'y,'zs/\(.\)\s\+/\1 /g
nmap \a? \WS:AlignCtrl mIp1P1lC ? : : : : 
omap \a? \WS:AlignCtrl mIp1P1lC ? : : : : 
map \WE :'y,'zs/\s\+$//e
map \WS :set lz
nmap <F4> \be
map <M-Up> :bp
map <M-Down> :bn
nmap <F5> :Buf
vmap <F3> "+y
map <F2> :w
nmap <C-CR> i
nmap <F8> :Tlist
nmap <F7> :cnext
map <xHome> <Home>
map <xEnd> <End>
map <S-xF4> <S-F4>
map <S-xF3> <S-F3>
map <S-xF2> <S-F2>
map <S-xF1> <S-F1>
map <xF4> <F4>
map <xF3> <F3>
map <xF2> <F2>
map <xF1> <F1>
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
nmap <C-PageDown> L$
vmap <C-PageDown> L$
nmap <C-PageUp> H
vmap <C-PageUp> H
abbr Ha <font class="note"></font>
abbr Hq <font class="question">Q:</font>
abbr Jmain public static void main( String []arg){}
abbr Jout System.out.println( );
abbr DBX DBG(DBG_ERROR|DBG_, "");
abbr DBW DBG(DBG_WARN|DBG_, "");
abbr DBI DBG(DBG_INFO|DBG_, "");
abbr DBR DBGRETURN(DBG_INFO|DBG_, "");
abbr DBE DBGENTRY(DBG_INFO|DBG_, "");
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set backup
set cindent
set expandtab
set guifont=7x13:h9
set guioptions=gmrLt
set hidden
set ignorecase
set path=.,/proj/m2m/releases/PREI_IDS_20020619/ibo_plus/sde2/inc,/proj/m2m/releases/PREI_IDS_20020619/ibo_plus/sde2/comps/infra/comps/tmosal/inc,/proj/m2m/releases/PREI_IDS_20020619/ibo_plus/sde2/comps/infra/comps/tmml/inc
set shiftwidth=4
set smartcase
set statusline=%-F%-m%-h%-r%-y\ buf\ %-n%=line\ %l,\ col\ %-2c\ %p%%
if &syntax != 'conf'
set syntax=conf
endif
set tabstop=4
set textwidth=79
set updatetime=600
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd D:\work\idmpr6\sde2
set shortmess=aoO
badd +137 \work\r64ft\sde2\comps\extensions\comps\mhegssf\apps\ssfats\makefile
badd +1005 comps\extensions\comps\mhegssf\apps\ssfats\host\tstcases.c
badd +85 comps\extensions\comps\mhegssf\apps\ssfats\makefile
badd +312 comps\extensions\comps\mhegssf\apps\ssfats\host\root.c
badd +17 comps\extensions\comps\mhegssf\apps\ssfats\host\tstcases.h
badd +312 ~\work\log\ssfats\11-001.log
badd +1 ~\work\log\ssfats\11-004.log
badd +125 comps\extensions\comps\mhegssf\tst\mheg5_stub.c
badd +12 comps\extensions\comps\mhegssf\tst\mheg5_stub.h
args ~\work\log\ssfats\11-004.log
set splitbelow splitright
normal _|
split
normal 1k
normal w
set nosplitbelow
set nosplitright
normal t
set winheight=1 winwidth=1
exe 'resize ' . ((&lines * 33 + 34) / 68)
normal w
exe 'resize ' . ((&lines * 32 + 34) / 68)
normal w
argglobal
edit comps\extensions\comps\mhegssf\tst\mheg5_stub.c
setlocal autoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatoptions=croql
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keymap=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal path=
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=C:\\TEMP/.tb.mheg5_stub.c.tags,C:\\TEMP/.tb.mheg5_stub.c.tags,./tags,tags
setlocal textwidth=79
setlocal thesaurus=
setlocal wrap
setlocal wrapmargin=0
silent! normal zE
let s:l = 125 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal zt
125
normal 0
normal w
argglobal
edit comps\extensions\comps\mhegssf\apps\ssfats\host\tstcases.c
setlocal autoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatoptions=croql
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keymap=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal path=
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,C:\\TEMP/.tb.tstcases.c.tags,./tags,tags
setlocal textwidth=79
setlocal thesaurus=
setlocal wrap
setlocal wrapmargin=0
silent! normal zE
let s:l = 1005 - ((20 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal zt
1005
normal 04l
normal w
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save