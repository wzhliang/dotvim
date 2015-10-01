if &cp | set nocp | endif
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
nmap <silent> o <Plug>ProjectOnly
nmap <silent>  o
nmap d :cs find d =expand("<cword>")	
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")	
nmap e :cs find e =expand("<cword>")	
nmap t :cs find t =expand("<cword>")	
nmap c :cs find c =expand("<cword>")	
nmap g :cs find g =expand("<cword>")	
nmap s :cs find s =expand("<cword>")	
nmap   
vmap [% [%m'gv``
nmap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
nmap <silent> \a, \WS:'y,'zs/\(\S\)\s\+/\1 /ge'yjma'zk\jnr,:silent 'y,'zg/,/let @x=substitute(getline(line(".")),'^\(.\{-}\) \S\+\s*,.*$','silent s/,/;\\r\1 /g','')|@x\WE
nmap <silent> \abox \WS:let b:alignmaps_iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:alignmaps_iws."/e"\WE
nmap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/[*/]:AlignCtrl g \/[*/]'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \adec \WS:'a,'zs/\([^ \t/(]\)\([*&]\)/\1 \2/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /ge:'y,'zv/^\s*[*/]/s/\([^/][*&]\)\s\+/\1/ge:'y,'zv/^\s*[*/]/s/^\(\s*\%(\h\w*\s\+\%([a-zA-Z_*(&]\)\@=\)\+\)\([*(&]*\)\s*\([a-zA-Z0-9_()]\+\)\s*\(\(\[.\{-}]\)*\)\s*\(=\)\=\s*\(.\{-}\)\=\s*;/\1@\2#@\3\4@\6@\7;@/e:'y,'zv/^\s*[*/]/s/\*\/\s*$/@*\//e:'y,'zv/^\s*[*/]/s/^\s\+\*/@@@@@* /e:'y,'zv/^\s*[*/]/s/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk:AlignCtrl v ^\s*[*/#]\t@:'y,'zv/^\s*[*/]/s/@ //ge:'y,'zv/^\s*[*/]/s/\(\s*\);/;\1/e:'y,'zv/^#/s/# //e:'y,'zv/^\s\+[*/#]/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+[*/#]/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zv/^\s\+[*/#]/s/^\(\s\+\) \*/\1*/e:'y,'zv/^\s\+[*/#]/s/[ \t@]*$//e:'y,'zs/^[*]/ */e\WE
nmap <silent> \adef \WS:AlignPush:AlignCtrl v ^\s*\(\/\*\|\/\/\):'a,.v/^\s*\(\/\*\|\/\/\)/s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.v/^\s*\(\/\*\|\/\/\)/s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.v/^\s*\(\/\*\|\/\/\)/s/ @//g\WE
nmap <silent> \anum \WS:'a,'zs/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge:AlignCtrl mp0P0:'a,'zAlign [.,@]:'a,'zs/\([-0-9.,]*\)\(\s*\)\([.,]\)/\2\1\3/g:'a,'zs/@/ /ge\WE
nmap <silent> \Htd \WS:'y,'zs%<[tT][rR]><[tT][dD][^>]\{-}>\|</[tT][dD]><[tT][dD][^>]\{-}>\|</[tT][dD]></[tT][rR]>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <[tT][rR]>/<[tT][rR]>/ge:'y,'zs/@//ge\WE
nmap <silent> \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
nmap <silent> \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
nmap <silent> \Ts, \WS:AlignCtrl mIp0P1=r ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
nmap <silent> \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
nmap <silent> \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
nmap <silent> \T= \WS:'a,'z-1s/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'z-1s@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'z-1s/; */;@/e:'a,'z-1s/==/``/ge:'a,'z-1s/!=/!`/ge:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,'z-1Align:'a,'z-1s/; *@/;/e:'a,'z-1s/; *$/;/e:'a,'z-1s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1s/`/=/ge\WE\acom
nmap <silent> \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
nmap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
nmap <silent> \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
nmap <silent> \ts, \WS:AlignCtrl mIp0P0=l ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
nmap <silent> \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
nmap <silent> \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
nmap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'zs/==/``/ge:'a,'zs/!=/!`/ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,'z-1Align:'a,'z-1s@\([*/+\-%|&\~^!=]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,'z-1v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'a,'z-1s/`/=/ge:'y,'zs/ @//eg\WE
nmap <silent> \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \tsq \WS:'a,.ReplaceQuotedSpaces:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/[%@]/ /g\WE
nmap <silent> \tt \WS:AlignCtrl mIp1P1=l \\\@<!& \\\\:'a,.Align\WE
nmap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
nmap \hs :call HideAll()
nmap \g :grep  `find . -name "*.[ch]"`
map <silent> \mm :ShowMarksPlaceMark
map <silent> \ma :ShowMarksClearAll
map <silent> \mh :ShowMarksClearMark
map <silent> \mo :ShowMarksOn
map <silent> \mt :ShowMarksToggle
nmap \ctsta <Plug>CleartoolSetActiv
nmap \ctqdif <Plug>CleartoolConsoleQueryDiff
nmap \ctbdif <Plug>CleartoolConsoleBranch0Diff
nmap \ctldif <Plug>CleartoolConsoleLatestDiff
nmap \ctmdif <Plug>CleartoolConsoleBranchMergeDiff
nmap \ct0dif <Plug>CleartoolConsoleBranch0Diff
nmap \ctpdif <Plug>CleartoolConsolePredDiff
nmap \ctxl <Plug>CleartoolGraphVerTree
nmap \cthist <Plug>CleartoolListHistory
nmap \ctunco <Plug>CleartoolUnCheckout
nmap \ctcou <Plug>CleartoolCOUnres
nmap \ctco <Plug>CleartoolCO
nmap \ctci <Plug>CleartoolCI
map <silent> \bv :VSBufExplorer
map <silent> \bs :SBufExplorer
map <silent> \be :BufExplorer
vmap <silent> \x <Plug>VisualTraditional
vmap <silent> \c <Plug>VisualTraditionalj
nmap <silent> \x <Plug>Traditional
nmap <silent> \c <Plug>Traditionalj
map \di <Plug>LoadDrawIt
vmap <silent> \Htd :<BS><BS><BS>ma'>\Htd
vmap <silent> \tt :<BS><BS><BS>ma'>\tt
vmap <silent> \tp@ :<BS><BS><BS>ma'>\tp@
vmap <silent> \tsq :<BS><BS><BS>ma'>\tsq
vmap <silent> \tsp :<BS><BS><BS>ma'>\tsp
vmap <silent> \tab :<BS><BS><BS>ma'>\tab
vmap <silent> \t@ :<BS><BS><BS>ma'>\t@
vmap <silent> \t? :<BS><BS><BS>ma'>\t?
vmap <silent> \t= :<BS><BS><BS>ma'>\t=
vmap <silent> \t< :<BS><BS><BS>ma'>\t<
vmap <silent> \t; :<BS><BS><BS>ma'>\t;
vmap <silent> \t: :<BS><BS><BS>ma'>\t:
vmap <silent> \ts, :<BS><BS><BS>ma'>\ts,
vmap <silent> \t, :<BS><BS><BS>ma'>\t,
vmap <silent> \t| :<BS><BS><BS>ma'>\t|
vmap <silent> \anum :B s/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge:AlignCtrl mp0P0gv:Align [.,@]:'<,'>s/\([-0-9.,]*\)\(\s\+\)\([.,]\)/\2\1\3/ge:'<,'>s/@/ /ge
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
vmap <silent> \Ts, :<BS><BS><BS>ma'>\Ts,
vmap <silent> \T, :<BS><BS><BS>ma'>\T,
vmap <silent> \T| :<BS><BS><BS>ma'>\T|
map <silent> \tW@ :AlignCtrl mWp1P1=l @:'a,.Align
omap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
map <silent> \t~ \WS:AlignCtrl mIp0P0=l ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
omap <silent> \tt \WS:AlignCtrl mIp1P1=l \\\@<!& \\\\:'a,.Align\WE
omap <silent> \tsq \WS:'a,.ReplaceQuotedSpaces:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/[%@]/ /g\WE
omap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'zs/==/``/ge:'a,'zs/!=/!`/ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,'z-1Align:'a,'z-1s@\([*/+\-%|&\~^!=]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,'z-1v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'a,'z-1s/`/=/ge:'y,'zs/ @//eg\WE
omap <silent> \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
omap <silent> \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap <silent> \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
omap <silent> \ts, \WS:AlignCtrl mIp0P0=l ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
omap <silent> \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
map <silent> \t# \WS:AlignCtrl mIp0P0=l #:'a,.Align\WE
omap <silent> \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
map <silent> \T~ \WS:AlignCtrl mIp0P0=r ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
omap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
map <silent> \Tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/:AlignCtrl mI=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
map <silent> \T? \WS:AlignCtrl mIp0P0=r ?:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
omap <silent> \T= \WS:'a,'z-1s/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'z-1s@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'z-1s/; */;@/e:'a,'z-1s/==/``/ge:'a,'z-1s/!=/!`/ge:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,'z-1Align:'a,'z-1s/; *@/;/e:'a,'z-1s/; *$/;/e:'a,'z-1s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1s/`/=/ge\WE\acom
omap <silent> \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
map <silent> \T; \WS:AlignCtrl mIp0P0=r ;:'a,.Align\WE
omap <silent> \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
omap <silent> \Ts, \WS:AlignCtrl mIp0P1=r ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
omap <silent> \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
map <silent> \T# \WS:AlignCtrl mIp0P0=r #:'a,.Align\WE
omap <silent> \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
omap <silent> \Htd \WS:'y,'zs%<[tT][rR]><[tT][dD][^>]\{-}>\|</[tT][dD]><[tT][dD][^>]\{-}>\|</[tT][dD]></[tT][rR]>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <[tT][rR]>/<[tT][rR]>/ge:'y,'zs/@//ge\WE
omap <silent> \anum \WS:'a,'zs/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge:AlignCtrl mp0P0:'a,'zAlign [.,@]:'a,'zs/\([-0-9.,]*\)\(\s*\)\([.,]\)/\2\1\3/g:'a,'zs/@/ /ge\WE
omap <silent> \adef \WS:AlignPush:AlignCtrl v ^\s*\(\/\*\|\/\/\):'a,.v/^\s*\(\/\*\|\/\/\)/s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.v/^\s*\(\/\*\|\/\/\)/s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.v/^\s*\(\/\*\|\/\/\)/s/ @//g\WE
omap <silent> \adec \WS:'a,'zs/\([^ \t/(]\)\([*&]\)/\1 \2/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /ge:'y,'zv/^\s*[*/]/s/\([^/][*&]\)\s\+/\1/ge:'y,'zv/^\s*[*/]/s/^\(\s*\%(\h\w*\s\+\%([a-zA-Z_*(&]\)\@=\)\+\)\([*(&]*\)\s*\([a-zA-Z0-9_()]\+\)\s*\(\(\[.\{-}]\)*\)\s*\(=\)\=\s*\(.\{-}\)\=\s*;/\1@\2#@\3\4@\6@\7;@/e:'y,'zv/^\s*[*/]/s/\*\/\s*$/@*\//e:'y,'zv/^\s*[*/]/s/^\s\+\*/@@@@@* /e:'y,'zv/^\s*[*/]/s/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk:AlignCtrl v ^\s*[*/#]\t@:'y,'zv/^\s*[*/]/s/@ //ge:'y,'zv/^\s*[*/]/s/\(\s*\);/;\1/e:'y,'zv/^#/s/# //e:'y,'zv/^\s\+[*/#]/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+[*/#]/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zv/^\s\+[*/#]/s/^\(\s\+\) \*/\1*/e:'y,'zv/^\s\+[*/#]/s/[ \t@]*$//e:'y,'zs/^[*]/ */e\WE
omap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/[*/]:AlignCtrl g \/[*/]'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \abox \WS:let b:alignmaps_iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:alignmaps_iws."/e"\WE
map <silent> \a< \WS:AlignCtrl mIp1P1=l << >>:'a,.Align\WE
omap <silent> \a, \WS:'y,'zs/\(\S\)\s\+/\1 /ge'yjma'zk\jnr,:silent 'y,'zg/,/let @x=substitute(getline(line(".")),'^\(.\{-}\) \S\+\s*,.*$','silent s/,/;\\r\1 /g','')|@x\WE
omap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
nmap \WE <Plug>AlignMapsWrapperEnd
nmap \WS <Plug>AlignMapsWrapperStart
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap <F9> :make
nmap <kMinus> -
nmap <kPlus> +
nmap <F12> :Project
nmap <F11> :set invfoldenable
nmap <F20> :cclose
nmap <F19> :copen
nmap <C-CR> i
nmap <Nul><Nul>d :vert scs find d =expand("<cword>")
nmap <Nul><Nul>i :vert scs find i ^=expand("<cfile>")$	
nmap <Nul><Nul>f :vert scs find f =expand("<cfile>")	
nmap <Nul><Nul>e :vert scs find e =expand("<cword>")
nmap <Nul><Nul>t :vert scs find t =expand("<cword>")
nmap <Nul><Nul>c :vert scs find c =expand("<cword>")
nmap <Nul><Nul>g :vert scs find g =expand("<cword>")
nmap <Nul><Nul>s :vert scs find s =expand("<cword>")
nmap <Nul>d :scs find d =expand("<cword>")	
nmap <Nul>i :scs find i ^=expand("<cfile>")$	
nmap <Nul>f :scs find f =expand("<cfile>")	
nmap <Nul>e :scs find e =expand("<cword>")	
nmap <Nul>t :scs find t =expand("<cword>")	
nmap <Nul>c :scs find c =expand("<cword>")	
nmap <Nul>g :scs find g =expand("<cword>")	
nmap <Nul>s :scs find s =expand("<cword>")	
noremap <Plug>VisualFirstLine :call EnhancedCommentify('', 'first',				    line("'<"), line("'>"))
noremap <Plug>VisualTraditional :call EnhancedCommentify('', 'guess',				    line("'<"), line("'>"))
noremap <Plug>VisualDeComment :call EnhancedCommentify('', 'decomment',				    line("'<"), line("'>"))
noremap <Plug>VisualComment :call EnhancedCommentify('', 'comment',				    line("'<"), line("'>"))
noremap <Plug>FirstLine :call EnhancedCommentify('', 'first')
noremap <Plug>Traditional :call EnhancedCommentify('', 'guess')
noremap <Plug>DeComment :call EnhancedCommentify('', 'decomment')
noremap <Plug>Comment :call EnhancedCommentify('', 'comment')
nnoremap <F5> :noh " in normal mode to disable the search hilight
nmap <F6> :set invlist
nmap <C-F1> }
nmap <F8> :Tlist
nmap <F7> :cnext
nmap <F4> \be
vmap <F3> "+y
map <F2> :w
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
nmap º :QuickFontSmaller
vmap Ω :Align =
nmap æ :QuickFontBigger
imap <silent> \x <Plug>Traditional
imap <silent> \c <Plug>Traditionalji
iabbr _DFH <Home>=DoxyFuncComment()XXi*?@briefA
iabbr _DFHp  =DoxyParamList()
iabbr _DMH =DoxyFileComment()XXi*?@briefA
iabbr _return DBG_RETURN(( "", DBG_STAL_AV, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _entry DBG_ENTRY(( "", DBG_STAL_AV, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _info DBG_INFO(( "", DBG_STAL_AV, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _error DBG_ERROR(( "", DBG_STAL_AV, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _warn DBG_WARN(( "", DBG_STAL_AV, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
cabbr ctpwv Ctpwv
cabbr ctdiff Ctdiff
cabbr ctxlsv Ctxlsv
cabbr cthist Cthist
cabbr cttree Cttree
cabbr ctldif Ctldif
cabbr ctcmt !cleartool describe -fmt "Comment:\n'\%c'" %
cabbr ctver !cleartool describe -aattr version "%"
cabbr ctdesc !cleartool describe "%"
cabbr ctbdif Ct0dif
cabbr ct0dif Ct0dif
cabbr ct !cleartool
cabbr ctexp Ctexp
cabbr ctsta Ctsta
cabbr ctlsc Ctlsc
cabbr ctlsa Ctlsa
cabbr ctmka Ctmka
abbr teh the
abbr fo of
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set background=dark
set backspace=2
set backup
set backupdir=~/tmp/.vimbackup
set breakat=,
set cpoptions=aABceFsM
set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopetagorder=1
set errorformat=Serious-st20icc-%f(%l)-%m,Error-st20icc-%f(%l)-%m,%DExamining\ %f,%X--
set expandtab
set guifont=7x13b
set hidden
set hlsearch
set ignorecase
set incsearch
set listchars=tab:>-,trail:-
set makeprg=gmake
set mouse=a
set ruler
set shiftwidth=4
set smartcase
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,/vobs/DualSkyPlus/src/tags,/proj/bskyb/users/wenzhil/LAL/tags,~/work/old/pace/otv4000/otval/src/tags
set textwidth=80
set viminfo=!,'20,<50,s10,h
set wildignore=*.pyc
set wildmenu
set winwidth=1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/tmp/jpeg-12
set shortmess=aoO
badd +1432 /vobs/DualSkyPlus/src/drivers/stal/src/stal_av/stal_av_audio.c
badd +48 ~/.todo
badd +25 ~/public_html/stat.htm
badd +666 /vobs/ST/stdrv/include/stvid.h
badd +1357 /vobs/DualSkyPlus/src/tests/otvtest/tests/t_av.c
badd +8886 /vobs/DualSkyPlus/src/opentv/include/opentvx.h
badd +8 ~/.alias
badd +45 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/stal_jpeg.c
badd +1 ~/work/dualsky/cs/new\ [checkouts_recurse]
badd +349 ~/tmp/cs-johnoc-audio-2008.diff
badd +1 makefile
badd +71 djglobal.h
badd +592 djhead.c
badd +463 djidct.c
badd +677 djphuff.c
badd +68 djerror.c
badd +76 djsetup.c
badd +310 jpeg.c
badd +1688 djpmain.c
badd +312 djpeg.h
badd +906 /vobs/DualSkyPlus/src/tests/otvtest/tests/t_jpeg.c
badd +231 ~/.vim/plugin/ShowBlockName.vim
args djhead.c
edit ~/.vimprojects
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 24 + 88) / 177)
exe '2resize ' . ((&lines * 57 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 152 + 88) / 177)
exe '3resize ' . ((&lines * 10 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 152 + 88) / 177)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Nop>
nnoremap <buffer> <silent>   |:silent exec 'vertical resize '.(match(g:proj_flags, '\Ct')!=-1 && winwidth('.') > g:proj_window_width?(g:proj_window_width):(winwidth('.') + g:proj_window_increment))
nmap <buffer> <silent> \s <S-CR>
nmap <buffer> <silent> \o <C-CR>
nnoremap <buffer> <silent> \I :echo Project_GetFname(line('.'))
nmap <buffer> <silent> \v ç
nmap <buffer> <silent> \<Up> <C-Up>
nmap <buffer> <silent> \<Down> <C-Down>
nnoremap <buffer> <silent> <M-2-LeftMouse> ç
nnoremap <buffer> <silent> <S-LeftMouse> <LeftMouse>
nmap <buffer> <silent> <C-2-LeftMouse> <C-CR>
nnoremap <buffer> <silent> <C-LeftMouse> <LeftMouse>
nnoremap <buffer> <silent> <3-LeftMouse> <Nop>
nmap <buffer> <silent> <RightMouse>  
nmap <buffer> <silent> <2-RightMouse>  
nmap <buffer> <silent> <3-RightMouse>  
nmap <buffer> <silent> <4-RightMouse>  
nnoremap <buffer> <F1> :let g:proj_doinghelp = 1<F1>
nmap <buffer> <silent> ç p
cnoremap <buffer> help let g:proj_doinghelp = 1:help
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal noautoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=
setlocal nobuflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=%s
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
set foldcolumn=2
setlocal foldcolumn=0
set nofoldenable
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=ProjFoldText()
setlocal formatoptions=tcq
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=1
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
setlocal textwidth=80
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowrap
setlocal wrapmargin=0
2
normal zo
11
normal zo
36
normal zo
38
normal zo
65
normal zo
67
normal zo
98
normal zo
133
normal zo
65
normal zo
36
normal zo
11
normal zo
5932
normal zo
5947
normal zo
5932
normal zo
5955
normal zo
5956
normal zo
5990
normal zo
5990
normal zo
5956
normal zo
5955
normal zo
2
normal zo
let s:l = 6002 - ((47 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6002
normal! 0
wincmd w
argglobal
edit jpeg.c
setlocal noarabic
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
set foldcolumn=2
setlocal foldcolumn=2
set nofoldenable
setlocal foldenable
setlocal foldexpr=GetC_Bracket_Fold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=expr
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
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
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
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
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
setlocal textwidth=80
setlocal thesaurus=
setlocal nowinfixheight
setlocal wrap
setlocal wrapmargin=0
94
normal zo
102
normal zo
94
normal zo
142
normal zo
150
normal zo
142
normal zo
182
normal zo
205
normal zo
232
normal zo
240
normal zo
246
normal zo
275
normal zo
288
normal zo
294
normal zo
303
normal zo
307
normal zo
313
normal zo
303
normal zo
319
normal zo
326
normal zo
294
normal zo
275
normal zo
348
normal zo
356
normal zo
362
normal zo
348
normal zo
377
normal zo
384
normal zo
394
normal zo
377
normal zo
514
normal zo
232
normal zo
let s:l = 395 - ((34 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
395
normal! 02l
wincmd w
argglobal
enew
setlocal noarabic
setlocal noautoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=delete
setlocal buflisted
setlocal buftype=quickfix
setlocal nocindent
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
if &filetype != 'qf'
setlocal filetype=qf
endif
set foldcolumn=2
setlocal foldcolumn=2
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatoptions=tcq
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal noswapfile
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal winfixheight
setlocal wrap
setlocal wrapmargin=0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 24 + 88) / 177)
exe '2resize ' . ((&lines * 57 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 152 + 88) / 177)
exe '3resize ' . ((&lines * 10 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 152 + 88) / 177)
set winheight=1 winwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
