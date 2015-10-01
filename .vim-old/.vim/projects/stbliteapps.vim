set nocompatible
let s:cpo_save=&cpo
set cpo&vim
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
imap <F9> :InsPrevHita
imap <F8> :InsNextHita
imap <F5> :PreviewClassa
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
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
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
map <silent> \mm <Plug>ShowmarksShowMarksPlaceMark
map <silent> \ma <Plug>ShowmarksShowMarksHideAll
map <silent> \mh <Plug>ShowmarksShowMarksHideMark
map <silent> \mt <Plug>ShowmarksShowMarksToggle
map <silent> \cc <Plug>CRV_CRefVimInvoke
map <silent> \cw <Plug>CRV_CRefVimAsk
nmap <silent> \cr <Plug>CRV_CRefVimNormal
vmap <silent> \cr <Plug>CRV_CRefVimVisual
nmap \ctsta <Plug>CleartoolSetActiv
nmap \qdif <Plug>CleartoolConsoleQueryDiff
nmap \pdif <Plug>CleartoolConsolePredDiff
nmap \ctxl <Plug>CleartoolGraphVerTree
nmap \cthist <Plug>CleartoolListHistory
nmap \ctunco <Plug>CleartoolUnCheckout
nmap \ctcou <Plug>CleartoolCOUnres
nmap \ctco <Plug>CleartoolCO
nmap \ctci <Plug>CleartoolCI
nmap \ch <Plug>CalendarH
nmap \ca <Plug>CalendarV
map <silent> \bs <Plug>SplitBufExplorer
map <silent> \be <Plug>StartBufExplorer
noremap \as :call AN_Map("")
map \[s <Plug>HMBStop
map \[i <Plug>HMBStart
vmap <silent> \x <Plug>VisualTraditional
vmap <silent> \c <Plug>VisualTraditionalj
nmap <silent> \x <Plug>Traditional
nmap <silent> \c <Plug>Traditionalj
map \di <Plug>LoadDrawIt
vmap <silent> \Htd :<BS><BS><BS>ma'>\Htd
vmap <silent> \tt :<BS><BS><BS>ma'>\tt
vmap <silent> \tp@ :<BS><BS><BS>ma'>\tp@
vmap <silent> \tsp :<BS><BS><BS>ma'>\tsp
vmap <silent> \tab :<BS><BS><BS>ma'>\tab
vmap <silent> \t@ :<BS><BS><BS>ma'>\t@
vmap <silent> \t? :<BS><BS><BS>ma'>\t?
vmap <silent> \t= :<BS><BS><BS>ma'>\t=
vmap <silent> \t< :<BS><BS><BS>ma'>\t<
vmap <silent> \t; :<BS><BS><BS>ma'>\t;
vmap <silent> \t: :<BS><BS><BS>ma'>\t:
vmap <silent> \t, :<BS><BS><BS>ma'>\t,
vmap <silent> \t| :<BS><BS><BS>ma'>\t|
vmap <silent> \afnc :<BS><BS><BS>ma'>\afnc
vmap <silent> \adef :<BS><BS><BS>ma'>\adef
vmap <silent> \adec :<BS><BS><BS>ma'>\adec
vmap <silent> \ascom :<BS><BS><BS>ma'>\ascom
vmap <silent> \acom :<BS><BS><BS>ma'>\acom
vmap <silent> \abox :<BS><BS><BS>ma'>\abox
vmap <silent> \a, :<BS><BS><BS>ma'>\a,
vmap <silent> \a? :<BS><BS><BS>ma'>\a?
vmap <silent> \Tsp :<BS><BS><BS>ma'>\Tsp
vmap <silent> \T@ :<BS><BS><BS>ma'>\T@
vmap <silent> \T= :<BS><BS><BS>ma'>\T=
vmap <silent> \T< :<BS><BS><BS>ma'>\T<
vmap <silent> \T: :<BS><BS><BS>ma'>\T:
vmap <silent> \T, :<BS><BS><BS>ma'>\T,
vmap <silent> \T| :<BS><BS><BS>ma'>\T|
map <silent> \tW@ :AlignCtrl mWp1P1=l @:'a,.Align
nmap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
omap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
map <silent> \t~ \WS:AlignCtrl mIp0P0=l ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \tt \WS:AlignCtrl mIp1P1=l & \\\\:'a,.Align\WE
omap <silent> \tt \WS:AlignCtrl mIp1P1=l & \\\\:'a,.Align\WE
nmap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap <silent> \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,.Align'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge'zk:'a,.v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,.v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,.Align'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge'zk:'a,.v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,.v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
omap <silent> \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
nmap <silent> \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap <silent> \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
omap <silent> \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
nmap <silent> \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
omap <silent> \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
map <silent> \t# \WS:AlignCtrl mIp0P0=l #:'a,.Align\WE
nmap <silent> \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
omap <silent> \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
map <silent> \T~ \WS:AlignCtrl mIp0P0=r ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0p0P0=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0p0P0=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
map <silent> \Tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\t','@','g')/:AlignCtrl mIp0P0=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
omap <silent> \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
map <silent> \T? \WS:AlignCtrl mIp0P0=r ?:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \T= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:'a,.s/; */;@/e'zk:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,.Align'zk:'a,.s/; *@/;/e'zk:'a,.s/; *$/;/e'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge\WE
omap <silent> \T= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge'zk:'a,.s/; */;@/e'zk:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,.Align'zk:'a,.s/; *@/;/e'zk:'a,.s/; *$/;/e'zk:'a,.s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge'zk:'a,.s/\( \+\);/;\1/ge\WE
nmap <silent> \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
omap <silent> \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
map <silent> \T; \WS:AlignCtrl mIp0P0=r ;:'a,.Align\WE
nmap <silent> \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
omap <silent> \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
nmap <silent> \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
omap <silent> \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
map <silent> \T# \WS:AlignCtrl mIp0P0=r #:'a,.Align\WE
nmap <silent> \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
omap <silent> \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
nmap <silent> \Htd \WS:'y,'zs%<TR><TD[^>]\{-}>\|</TD><TD[^>]\{-}>\|</TD></TR>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <TR>/<TR>/ge:'y,'zs/@//ge\WE
omap <silent> \Htd \WS:'y,'zs%<TR><TD[^>]\{-}>\|</TD><TD[^>]\{-}>\|</TD></TR>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <TR>/<TR>/ge:'y,'zs/@//ge\WE
nmap <silent> \adef \WS:'a,.s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.s/ @//g\WE
omap <silent> \adef \WS:'a,.s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.s/ @//g\WE
nmap <silent> \adec \WS:'a,'zs/\([^ \t/]\)\([*&]\)/\1 \2/e:'a,'zs/\/\*\|\/\//&/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /eg:'y,'zv/^\//s/\([*&]\) \+/\1/ge:'y,'zg/^\//norm! kJ:'y,'zs/^\([^=*&[]* \)\([*(&]*\)\([a-zA-Z0-9_()]\+\) *\(\(\[.\{-}]\)*\) *\(=\)\= *\(.\{-}\)\= *;/\1@\2#@\3\4@\6@\7;@/e:'y,'zs/\*\/\s*$/@*\//e:'y,'zs/^\s\+\*/@@@@@* /e:'y,'zs/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk\t@:'y,'zs/@ //ge:'y,'zs/\(\s*\);/;\1/e:'y,'zs/# //e:'y,'zv/^\s\+\*/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+\*/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zs/^\(\s\+\) \*/\1*/e:'y,'zs/[ \t@]*$//e\WE
omap <silent> \adec \WS:'a,'zs/\([^ \t/]\)\([*&]\)/\1 \2/e:'a,'zs/\/\*\|\/\//&/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /eg:'y,'zv/^\//s/\([*&]\) \+/\1/ge:'y,'zg/^\//norm! kJ:'y,'zs/^\([^=*&[]* \)\([*(&]*\)\([a-zA-Z0-9_()]\+\) *\(\(\[.\{-}]\)*\) *\(=\)\= *\(.\{-}\)\= *;/\1@\2#@\3\4@\6@\7;@/e:'y,'zs/\*\/\s*$/@*\//e:'y,'zs/^\s\+\*/@@@@@* /e:'y,'zs/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk\t@:'y,'zs/@ //ge:'y,'zs/\(\s*\);/;\1/e:'y,'zs/# //e:'y,'zv/^\s\+\*/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+\*/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zs/^\(\s\+\) \*/\1*/e:'y,'zs/[ \t@]*$//e\WE
nmap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/\*'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/\*'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \abox \WS:let b:iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:iws."/e"\WE
omap <silent> \abox \WS:let b:iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:iws."/e"\WE
nmap <silent> \a, \WS:'y,'zs/\(.\)\s\+/\1 /g'yjma'zk\jnr,:'y,'zg/,/let @x=substitute(getline(line(".")),"^\\(.\\{-}\\) \\S\\+\\s*,.*$","s/,/;\\1 /g","")|@x\WE
omap <silent> \a, \WS:'y,'zs/\(.\)\s\+/\1 /g'yjma'zk\jnr,:'y,'zg/,/let @x=substitute(getline(line(".")),"^\\(.\\{-}\\) \\S\\+\\s*,.*$","s/,/;\\1 /g","")|@x\WE
nmap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
omap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
map \WE :'y,'zs/\s\+$//e:'y,'zs/<Del>/@/ge'yjmakdd'zdd:exe "set ch=".b:ch:unlet b:ch:exe 'norm! '.b:curline.'G'.b:curcol."\|":let @/= b:keepsearch:set nolz
map \WS :set lz:let b:curline=line("."):let b:curcol =col("."):let b:keepsearch=@/:put =''mz'a:put! ='':let b:ch= &ch:set ch=2my:'y,'zs/@/<Del>/ge'zk
imap ê <RightMouse>a
imap ì :BuildMenu<RightMouse>a
nmap <F9> :make
nmap <F4> \be
map <M-Up> :bp
map <M-Down> :bn
nmap <F5> :Buf
vmap <F3> "+y
map <F2> :w
nmap <C-CR> i
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
map <S-F8> :NextInBlock
map <S-F9> :PrevInBlock
nmap <silent> <Plug>CalendarH :cal Calendar(1)
nmap <silent> <Plug>CalendarV :cal Calendar(0)
noremap <Plug>VisualFirstLine :call EnhancedCommentify('', 'first',				    line("'<"), line("'>"))
noremap <Plug>VisualTraditional :call EnhancedCommentify('', 'guess',				    line("'<"), line("'>"))
noremap <Plug>VisualDeComment :call EnhancedCommentify('', 'decomment',				    line("'<"), line("'>"))
noremap <Plug>VisualComment :call EnhancedCommentify('', 'comment',				    line("'<"), line("'>"))
noremap <Plug>FirstLine :call EnhancedCommentify('', 'first')
noremap <Plug>Traditional :call EnhancedCommentify('', 'guess')
noremap <Plug>DeComment :call EnhancedCommentify('', 'decomment')
noremap <Plug>Comment :call EnhancedCommentify('', 'comment')
nmap <C-F1> } 
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
imap <NL> <Plug>IMAP_JumpForward
vmap ½ :Align =
imap <silent> \x <Plug>Traditional
imap <silent> \c <Plug>Traditionalji
abbr Ha <font class="note"></font>
abbr Hq <font class="question">Q:</font>
abbr Jmain public static void main( String []arg){}
abbr Jout System.out.println( );
abbr DBX DBG(DBG_ERROR|DBG_, "");
abbr DBW DBG(DBG_WARN|DBG_, "");
abbr DBI DBG(DBG_INFO|DBG_, "");
abbr DBR DBGRETURN(DBG_INFO|DBG_, "");
abbr DBE DBGENTRY(DBG_INFO|DBG_, "");
cabbr ctpwv echohl Question|echo "Current view is: "$view|echohl None
cabbr ctdiff !cleartool diff -graphical -pred "%" &
cabbr ctxlsv !xlsvtree "%" &
cabbr ctcmt !cleartool describe -fmt "Comment:\n'\%c'" %
cabbr ctver !cleartool describe -aattr version "%"
cabbr ctdesc !cleartool describe "%"
cabbr ct !cleartool
abbr teh the
abbr fo of
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set backup
set cindent
set errorformat=Serious-st20icc-%f(%l)-%m,Error-st20icc-%f(%l)-%m,%DExamining\ %f,%X--
set expandtab
set guifont=8x13
set guioptions=agimrLt
set hidden
set hlsearch
set incsearch
set listchars=tab:>-,trail:-
set makeprg=gmake
set mouse=a
set mousemodel=popup
set shiftwidth=4
set smartcase
if &syntax != 'c'
set syntax=c
endif
set tabstop=4
set textwidth=79
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /proj/stblite/clearcase/views/stblite_apps_wenzhil_devel.vws/vobs/STBLite/code
set shortmess=aoO
badd +1 appli/eMenu/src/em_action.c
badd +704 al/st5514/drvral/src/dra_fpn.c
badd +27 ~/public_html/stat.htm
badd +48 ~/.tcshrc
badd +1410 appli/fl/src/fl_settings.c
badd +0 al/st5514/osal/src/osa_debug.c
args al/st5514/drvral/src/dra_fpn.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert resize ' . ((&columns * 30 + 60) / 121)
wincmd w
exe 'vert resize ' . ((&columns * 90 + 60) / 121)
wincmd w
argglobal
enew
file __Tag_List__
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <kMultiply> :silent! %foldopen!
inoremap <buffer> <silent> <kMinus> :silent! foldclose
inoremap <buffer> <silent> <kPlus> :silent! foldopen
nnoremap <buffer> <silent> * :silent! %foldopen!
nnoremap <buffer> <silent> + :silent! foldopen
nnoremap <buffer> <silent> - :silent! foldclose
nnoremap <buffer> <silent> q :close
nnoremap <buffer> <silent> <kMultiply> :silent! %foldopen!
nnoremap <buffer> <silent> <kMinus> :silent! foldclose
nnoremap <buffer> <silent> <kPlus> :silent! foldopen
inoremap <buffer> <silent> * :silent! %foldopen!
inoremap <buffer> <silent> + :silent! foldopen
inoremap <buffer> <silent> - :silent! foldclose
inoremap <buffer> <silent> q :close
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=delete
setlocal nobuflisted
setlocal buftype=nofile
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal nocopyindent
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=v:folddashes.getline(v:foldstart)
setlocal formatoptions=tcq
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal noreadonly
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal noswapfile
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
edit al/st5514/osal/src/osa_debug.c
setlocal noautoindent
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
setlocal nocopyindent
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
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatoptions=croql
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal noreadonly
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
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal nowinfixheight
setlocal wrap
setlocal wrapmargin=0
let s:l = 67 - ((51 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 025l
wincmd w
2wincmd w
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
