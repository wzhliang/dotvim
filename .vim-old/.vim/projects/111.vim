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
vmap \Htd :<BS><BS><BS>ma'>\Htd
vmap \tt :<BS><BS><BS>ma'>\tt
vmap \tp@ :<BS><BS><BS>ma'>\tp@
vmap \tsp :<BS><BS><BS>ma'>\tsp
vmap \tab :<BS><BS><BS>ma'>\tab
vmap \t@ :<BS><BS><BS>ma'>\t@
vmap \t? :<BS><BS><BS>ma'>\t?
vmap \t= :<BS><BS><BS>ma'>\t=
vmap \t< :<BS><BS><BS>ma'>\t<
vmap \t; :<BS><BS><BS>ma'>\t;
vmap \t: :<BS><BS><BS>ma'>\t:
vmap \t, :<BS><BS><BS>ma'>\t,
vmap \t| :<BS><BS><BS>ma'>\t|
vmap \afnc :<BS><BS><BS>ma'>\afnc
vmap \adef :<BS><BS><BS>ma'>\adef
vmap \adec :<BS><BS><BS>ma'>\adec
vmap \ascom :<BS><BS><BS>ma'>\ascom
vmap \acom :<BS><BS><BS>ma'>\acom
vmap \abox :<BS><BS><BS>ma'>\abox
vmap \a, :<BS><BS><BS>ma'>\a,
vmap \a? :<BS><BS><BS>ma'>\a?
vmap \Tsp :<BS><BS><BS>ma'>\Tsp
vmap \T@ :<BS><BS><BS>ma'>\T@
vmap \T= :<BS><BS><BS>ma'>\T=
vmap \T< :<BS><BS><BS>ma'>\T<
vmap \T: :<BS><BS><BS>ma'>\T:
vmap \T, :<BS><BS><BS>ma'>\T,
vmap \T| :<BS><BS><BS>ma'>\T|
map \tW@ :AlignCtrl mWp1P1=l @:'a,.Align
nmap \t@ :AlignCtrl mIp1P1=l @:'a,.Align
omap \t@ :AlignCtrl mIp1P1=l @:'a,.Align
map \t~ \WS:AlignCtrl mIp0P0=l ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap \tt \WS:AlignCtrl mIp1P1=l & \\\\:'a,.Align\WE
omap \tt \WS:AlignCtrl mIp1P1=l & \\\\:'a,.Align\WE
nmap \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,.Align'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge'zk:'a,.v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,.v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,.Align'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge'zk:'a,.v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,.v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
omap \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
nmap \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
omap \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
nmap \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
omap \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
map \t# \WS:AlignCtrl mIp0P0=l #:'a,.Align\WE
nmap \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
omap \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
map \T~ \WS:AlignCtrl mIp0P0=r ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0p0P0=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0p0P0=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
map \Tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/:AlignCtrl mIp0P0=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
omap \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
map \T? \WS:AlignCtrl mIp0P0=r ?:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap \T= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:'a,.s/; */;@/e'zk:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,.Align'zk:'a,.s/; *@/;/e'zk:'a,.s/; *$/;/e'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge\WE
omap \T= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:'a,.s/; */;@/e'zk:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,.Align'zk:'a,.s/; *@/;/e'zk:'a,.s/; *$/;/e'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge\WE
nmap \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
omap \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
map \T; \WS:AlignCtrl mIp0P0=r ;:'a,.Align\WE
nmap \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
omap \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
nmap \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
omap \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
map \T# \WS:AlignCtrl mIp0P0=r #:'a,.Align\WE
nmap \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
omap \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
nmap \Htd \WS:'y,'zs%<TR><TD[^>]\{-}>\|</TD><TD[^>]\{-}>\|</TD></TR>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <TR>/<TR>/ge:'y,'zs/@//ge\WE
omap \Htd \WS:'y,'zs%<TR><TD[^>]\{-}>\|</TD><TD[^>]\{-}>\|</TD></TR>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <TR>/<TR>/ge:'y,'zs/@//ge\WE
nmap \adef \WS:'a,.s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.s/ @//g\WE
omap \adef \WS:'a,.s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.s/ @//g\WE
nmap \adec \WS:'a,'zs/\([^ \t/]\)\([*&]\)/\1 \2/e:'a,'zs/\/\*\|\/\//&/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /eg:'y,'zv/^\//s/\([*&]\) \+/\1/ge:'y,'zg/^\//norm! kJ:'y,'zs/^\([^=*&[]* \)\([*(&]*\)\([a-zA-Z0-9_()]\+\) *\(\(\[.\{-}]\)*\) *\(=\)\= *\(.\{-}\)\= *;/\1@\2#@\3\4@\6@\7;@/e:'y,'zs/\*\/\s*$/@*\//e:'y,'zs/^\s\+\*/@@@@@* /e:'y,'zs/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk\t@:'y,'zs/@ //ge:'y,'zs/\(\s*\);/;\1/e:'y,'zs/# //e:'y,'zv/^\s\+\*/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+\*/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zs/^\(\s\+\) \*/\1*/e:'y,'zs/[ \t@]*$//e\WE
omap \adec \WS:'a,'zs/\([^ \t/]\)\([*&]\)/\1 \2/e:'a,'zs/\/\*\|\/\//&/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /eg:'y,'zv/^\//s/\([*&]\) \+/\1/ge:'y,'zg/^\//norm! kJ:'y,'zs/^\([^=*&[]* \)\([*(&]*\)\([a-zA-Z0-9_()]\+\) *\(\(\[.\{-}]\)*\) *\(=\)\= *\(.\{-}\)\= *;/\1@\2#@\3\4@\6@\7;@/e:'y,'zs/\*\/\s*$/@*\//e:'y,'zs/^\s\+\*/@@@@@* /e:'y,'zs/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk\t@:'y,'zs/@ //ge:'y,'zs/\(\s*\);/;\1/e:'y,'zs/# //e:'y,'zv/^\s\+\*/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+\*/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zs/^\(\s\+\) \*/\1*/e:'y,'zs/[ \t@]*$//e\WE
nmap \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/\*'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/\*'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap \abox \WS:let b:iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:iws."/e"\WE
omap \abox \WS:let b:iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:iws."/e"\WE
nmap \a, \WS:'y,'zs/\(.\)\s\+/\1 /g'yjma'zk\jnr,:'y,'zg/,/let @x=substitute(getline(line(".")),"^\\(.\\{-}\\) \\S\\+\\s*,.*$","s/,/;\\1 /g","")|@x\WE
omap \a, \WS:'y,'zs/\(.\)\s\+/\1 /g'yjma'zk\jnr,:'y,'zg/,/let @x=substitute(getline(line(".")),"^\\(.\\{-}\\) \\S\\+\\s*,.*$","s/,/;\\1 /g","")|@x\WE
nmap \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
omap \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
map \WE :'y,'zs/\s\+$//e:'y,'zs/<Del>/@/ge'yjmakdd'zdd:exe "set ch=".b:ch:unlet b:ch:exe 'norm! '.b:curline.'G'.b:curcol."\|":let @/= b:keepsearch:set nolz
map \WS :set lz:let b:curline=line("."):let b:curcol =col("."):let b:keepsearch=@/:put =''mz'a:put! ='':let b:ch= &ch:set ch=2my:'y,'zs/@/<Del>/ge'zk
nmap <F4> \be
map <M-Up> :bp
map <M-Down> :bn
nmap <F5> :Buf
vmap <F3> "+y
map <F2> :w
nmap <C-CR> i
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
