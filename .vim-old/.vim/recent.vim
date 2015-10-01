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
nmap <silent>  o
nmap <silent> o <Plug>ProjectOnly
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
nmap <silent> \sc :call ToggleSemicolonHighlighting()
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
nmap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
omap <silent> \t@ :AlignCtrl mIp1P1=l @:'a,.Align
map <silent> \t~ \WS:AlignCtrl mIp0P0=l ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \tt \WS:AlignCtrl mIp1P1=l \\\@<!& \\\\:'a,.Align\WE
omap <silent> \tt \WS:AlignCtrl mIp1P1=l \\\@<!& \\\\:'a,.Align\WE
nmap <silent> \tsq \WS:'a,.ReplaceQuotedSpaces:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/[%@]/ /g\WE
omap <silent> \tsq \WS:'a,.ReplaceQuotedSpaces:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).substitute(submatch(2),'\s\+','@','g')/:AlignCtrl mIp0P0=l @:'a,.Align:'y+1,'z-1s/[%@]/ /g\WE
nmap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/:AlignCtrl mI=l @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap <silent> \t? \WS:AlignCtrl mIp0P0=l ?:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'zs/==/``/ge:'a,'zs/!=/!`/ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,'z-1Align:'a,'z-1s@\([*/+\-%|&\~^!=]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,'z-1v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'a,'z-1s/`/=/ge:'y,'zs/ @//eg\WE
omap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'zs@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'zs/==/``/ge:'a,'zs/!=/!`/ge'zk:AlignCtrl mIp1P1=l =:AlignCtrl g =:'a,'z-1Align:'a,'z-1s@\([*/+\-%|&\~^!=]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1v/^\s*\/[*/]/s/\/[*/]/@&@/e:'a,'z-1v/^\s*\/[*/]/s/\*\//@&/e'zk\t@:'y,'zs/^\(\s*\) @/\1/e:'a,'z-1s/`/=/ge:'y,'zs/ @//eg\WE
nmap <silent> \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
omap <silent> \t< \WS:AlignCtrl mIp0P0=l <:'a,.Align\WE
nmap <silent> \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
omap <silent> \t; \WS:AlignCtrl mIp0P0=l ;:'a,.Align:.,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
omap <silent> \t: \WS:AlignCtrl mIp1P1=l ::'a,.Align\WE
nmap <silent> \ts, \WS:AlignCtrl mIp0P0=l ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
omap <silent> \ts, \WS:AlignCtrl mIp0P0=l ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
nmap <silent> \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
omap <silent> \t, \WS:AlignCtrl mIp0P1=l ,:'a,.Align\WE
map <silent> \t# \WS:AlignCtrl mIp0P0=l #:'a,.Align\WE
nmap <silent> \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
omap <silent> \t| \WS:AlignCtrl mIp0P0=l |:'a,.Align\WE
map <silent> \T~ \WS:AlignCtrl mIp0P0=r ~:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
omap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/:AlignCtrl mI=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
map <silent> \Tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/:AlignCtrl mI=r @:'a,.Align:'y+1,'z-1s/@/ /g\WE
nmap <silent> \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
omap <silent> \T@ \WS:AlignCtrl mIp0P0=r @:'a,.Align\WE
map <silent> \T? \WS:AlignCtrl mIp0P0=r ?:'a,.Align:'y,'zs/ \( *\);/;\1/ge\WE
nmap <silent> \T= \WS:'a,'z-1s/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'z-1s@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'z-1s/; */;@/e:'a,'z-1s/==/``/ge:'a,'z-1s/!=/!`/ge:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,'z-1Align:'a,'z-1s/; *@/;/e:'a,'z-1s/; *$/;/e:'a,'z-1s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1s/`/=/ge\WE\acom
omap <silent> \T= \WS:'a,'z-1s/\s\+\([*/+\-%|&\~^]\==\)/ \1/e:'a,'z-1s@ \+\([*/+\-%|&\~^]\)=@\1=@ge:'a,'z-1s/; */;@/e:'a,'z-1s/==/``/ge:'a,'z-1s/!=/!`/ge:AlignCtrl mIp1P1=r = @:AlignCtrl g =:'a,'z-1Align:'a,'z-1s/; *@/;/e:'a,'z-1s/; *$/;/e:'a,'z-1s@\([*/+\-%|&\~^]\)\( \+\)=@\2\1=@ge:'a,'z-1s/\( \+\);/;\1/ge:'a,'z-1s/`/=/ge\WE\acom
nmap <silent> \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
omap <silent> \T< \WS:AlignCtrl mIp0P0=r <:'a,.Align\WE
map <silent> \T; \WS:AlignCtrl mIp0P0=r ;:'a,.Align\WE
nmap <silent> \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
omap <silent> \T: \WS:AlignCtrl mIp1P1=r ::'a,.Align\WE
nmap <silent> \Ts, \WS:AlignCtrl mIp0P1=r ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
omap <silent> \Ts, \WS:AlignCtrl mIp0P1=r ,:'a,.Align:'a,.s/\(\s*\),/,\1/ge\WE
nmap <silent> \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
omap <silent> \T, \WS:AlignCtrl mIp0P1=r ,:'a,.Align\WE
map <silent> \T# \WS:AlignCtrl mIp0P0=r #:'a,.Align\WE
nmap <silent> \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
omap <silent> \T| \WS:AlignCtrl mIp0P0=r |:'a,.Align\WE
nmap <silent> \Htd \WS:'y,'zs%<[tT][rR]><[tT][dD][^>]\{-}>\|</[tT][dD]><[tT][dD][^>]\{-}>\|</[tT][dD]></[tT][rR]>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <[tT][rR]>/<[tT][rR]>/ge:'y,'zs/@//ge\WE
omap <silent> \Htd \WS:'y,'zs%<[tT][rR]><[tT][dD][^>]\{-}>\|</[tT][dD]><[tT][dD][^>]\{-}>\|</[tT][dD]></[tT][rR]>%@&@%g'yjma'zk:AlignCtrl m=Ilp1P0 @:'a,.Align:'y,'zs/ @/@/:'y,'zs/@ <[tT][rR]>/<[tT][rR]>/ge:'y,'zs/@//ge\WE
nmap <silent> \anum \WS:'a,'zs/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge:AlignCtrl mp0P0:'a,'zAlign [.,@]:'a,'zs/\([-0-9.,]*\)\(\s*\)\([.,]\)/\2\1\3/g:'a,'zs/@/ /ge\WE
omap <silent> \anum \WS:'a,'zs/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge:AlignCtrl mp0P0:'a,'zAlign [.,@]:'a,'zs/\([-0-9.,]*\)\(\s*\)\([.,]\)/\2\1\3/g:'a,'zs/@/ /ge\WE
nmap <silent> \adef \WS:AlignPush:AlignCtrl v ^\s*\(\/\*\|\/\/\):'a,.v/^\s*\(\/\*\|\/\/\)/s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.v/^\s*\(\/\*\|\/\/\)/s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.v/^\s*\(\/\*\|\/\/\)/s/ @//g\WE
omap <silent> \adef \WS:AlignPush:AlignCtrl v ^\s*\(\/\*\|\/\/\):'a,.v/^\s*\(\/\*\|\/\/\)/s/^\(\s*\)#\(\s\)*define\s*\(\I[a-zA-Z_0-9(),]*\)\s*\(.\{-}\)\($\|\/\*\)/#\1\2define @\3@\4@\5/e:'a,.v/^\s*\(\/\*\|\/\/\)/s/\($\|\*\/\)/@&/e'zk\t@'yjma'zk:'a,.v/^\s*\(\/\*\|\/\/\)/s/ @//g\WE
nmap <silent> \adec \WS:'a,'zs/\([^ \t/(]\)\([*&]\)/\1 \2/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /ge:'y,'zv/^\s*[*/]/s/\([^/][*&]\)\s\+/\1/ge:'y,'zv/^\s*[*/]/s/^\(\s*\%(\h\w*\s\+\%([a-zA-Z_*(&]\)\@=\)\+\)\([*(&]*\)\s*\([a-zA-Z0-9_()]\+\)\s*\(\(\[.\{-}]\)*\)\s*\(=\)\=\s*\(.\{-}\)\=\s*;/\1@\2#@\3\4@\6@\7;@/e:'y,'zv/^\s*[*/]/s/\*\/\s*$/@*\//e:'y,'zv/^\s*[*/]/s/^\s\+\*/@@@@@* /e:'y,'zv/^\s*[*/]/s/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk:AlignCtrl v ^\s*[*/#]\t@:'y,'zv/^\s*[*/]/s/@ //ge:'y,'zv/^\s*[*/]/s/\(\s*\);/;\1/e:'y,'zv/^#/s/# //e:'y,'zv/^\s\+[*/#]/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+[*/#]/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zv/^\s\+[*/#]/s/^\(\s\+\) \*/\1*/e:'y,'zv/^\s\+[*/#]/s/[ \t@]*$//e:'y,'zs/^[*]/ */e\WE
omap <silent> \adec \WS:'a,'zs/\([^ \t/(]\)\([*&]\)/\1 \2/e:'y,'zv/^\//s/\([^ \t]\)\s\+/\1 /ge:'y,'zv/^\s*[*/]/s/\([^/][*&]\)\s\+/\1/ge:'y,'zv/^\s*[*/]/s/^\(\s*\%(\h\w*\s\+\%([a-zA-Z_*(&]\)\@=\)\+\)\([*(&]*\)\s*\([a-zA-Z0-9_()]\+\)\s*\(\(\[.\{-}]\)*\)\s*\(=\)\=\s*\(.\{-}\)\=\s*;/\1@\2#@\3\4@\6@\7;@/e:'y,'zv/^\s*[*/]/s/\*\/\s*$/@*\//e:'y,'zv/^\s*[*/]/s/^\s\+\*/@@@@@* /e:'y,'zv/^\s*[*/]/s/^@@@@@\*\(.*[^*/]\)$/&@*/e'yjma'zk:AlignCtrl v ^\s*[*/#]\t@:'y,'zv/^\s*[*/]/s/@ //ge:'y,'zv/^\s*[*/]/s/\(\s*\);/;\1/e:'y,'zv/^#/s/# //e:'y,'zv/^\s\+[*/#]/s/\([^/*]\)\(\*\+\)\( \+\)/\1\3\2/e:'y,'zv/^\s\+[*/#]/s/\((\+\)\( \+\)\*/\2\1*/e:'y,'zv/^\s\+[*/#]/s/^\(\s\+\) \*/\1*/e:'y,'zv/^\s\+[*/#]/s/[ \t@]*$//e:'y,'zs/^[*]/ */e\WE
nmap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/[*/]:AlignCtrl g \/[*/]'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e:silent! 'a,.g/^\s*@\/[*/]/s/@//ge:AlignCtrl v ^\s*\/[*/]:AlignCtrl g \/[*/]'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
omap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e:'a,.s/\*\//@&/e'zk\tW@:'y,'zs/^\(\s*\) @/\1/e:'y,'zs/ @//eg\WE
nmap <silent> \abox \WS:let b:alignmaps_iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:alignmaps_iws."/e"\WE
omap <silent> \abox \WS:let b:alignmaps_iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e'):'a,'z-1s/^\s\+//e:'a,'z-1s/^.*$/@&@/:AlignCtrl m=p01P0w @:'a,.Align:'a,'z-1s/@/ * /:'a,'z-1s/@$/*/'aYP:s/./*/g0r/'zkYp:s/./*/g0r A/:exe "'a-1,'z-1s/^/".b:alignmaps_iws."/e"\WE
map <silent> \a< \WS:AlignCtrl mIp1P1=l << >>:'a,.Align\WE
nmap <silent> \a, \WS:'y,'zs/\(\S\)\s\+/\1 /ge'yjma'zk\jnr,:silent 'y,'zg/,/let @x=substitute(getline(line(".")),'^\(.\{-}\) \S\+\s*,.*$','silent s/,/;\\r\1 /g','')|@x\WE
omap <silent> \a, \WS:'y,'zs/\(\S\)\s\+/\1 /ge'yjma'zk\jnr,:silent 'y,'zg/,/let @x=substitute(getline(line(".")),'^\(.\{-}\) \S\+\s*,.*$','silent s/,/;\\r\1 /g','')|@x\WE
nmap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
omap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : :'a,.Align:'a,'z-1s/\(\s\+\)? /?\1/e\WE
nmap \WE <Plug>AlignMapsWrapperEnd
nmap \WS <Plug>AlignMapsWrapperStart
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap <F15> gqgqj
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
iabbr _DMH =DoxyFileComment()XXi*?@briefA
iabbr _DFHp  =DoxyParamList()
iabbr _DFH <Home>=DoxyFuncComment()XXi*?@briefA
iabbr _return DBG_RETURN(( "", DBG_MODNAME, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _entry DBG_ENTRY(( "", DBG_MODNAME, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _info DBG_INFO(( "", DBG_MODNAME, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _error DBG_ERROR(( "", DBG_MODNAME, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
iabbr _warn DBG_WARN(( "", DBG_MODNAME, ".\n"));<Left><Left><Left><Left><Left><Left><Left>
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
set cpoptions=aABceFsM
set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopetagorder=1
set errorformat=Serious-st20icc-%f(%l)-%m,Error-st20icc-%f(%l)-%m,%DExamining\ %f,%X--
set expandtab
set guifont=7x13b
set hidden
set hlsearch
set incsearch
set listchars=tab:>-,trail:-
set makeprg=gmake
set mouse=a
set ruler
set shiftwidth=4
set smartcase
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,/vobs/DualSkyPlus/src/tags,/proj/bskyb/users/wenzhil/LAL/tags,~/work/old/pace/otv4000/otval/src/tags,~/tmp/jpeg-12/tags
set textwidth=80
set viminfo=!,'20,<50,s10,h
set wildmenu
set winwidth=1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
set shortmess=aoO
badd +28 public_html/stat.htm
badd +179 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/stal_jpeg.c
badd +30 .gvimrc
badd +1 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_cfg.h
badd +29 public_html/dualsky/jpeg.html
badd +542 /vobs/DualSkyPlus/src/drivers/stal/src/stal_dmx/stal_dmx.c
badd +53 /vobs/DualSkyPlus/src/tests/otvtest/tests/am5512/t_av_hal.c
badd +156 /vobs/DualSkyPlus/src/drivers/stal/src/stal_dmx/stal_dmx_local.h
badd +728 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_main.c
badd +1 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg.h
badd +40 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_error.c
badd +444 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_header.c
badd +408 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_huffman.c
badd +184 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_idct.c
badd +7 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_setup.c
badd +42 /vobs/DualSkyPlus/src/opentv/1_3/include/semaphor_otv.h
badd +8862 /vobs/DualSkyPlus/src/opentv/1_3/include/opentvx.h
badd +319 /vobs/DualSkyPlus/src/tests/otvtest/tests/t_jpeg.c
badd +1304 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/jpeg_scale.c
badd +25 /vobs/DualSkyPlus/src/drivers/stal/src/stal_jpeg/makefile
badd +1 tmp/cs-dinfo.diff
badd +268 /vobs/DualSkyPlus/src/drivers/stal/src/stal_av/stal_av.c
badd +993 /vobs/DualSkyPlus/src/drivers/stal/src/stal_av/stal_av_image.c
badd +273 /vobs/ST/stdrv/include/stblit.h
badd +197 tmp/run02.log
badd +2 .todo
badd +81 /vobs/DualSkyPlus/src/drivers/debug/include/s3_error.h
badd +67 .vim/ftplugin/MakeDoxygenComment.vim
badd +80 .vim/ftplugin/c_MakeDoxygenComment.vim
args .vim/ftplugin/c_MakeDoxygenComment.vim
edit .vimprojects
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
exe '2resize ' . ((&lines * 34 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 152 + 88) / 177)
exe '3resize ' . ((&lines * 33 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 152 + 88) / 177)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Nop>
nnoremap <buffer> <silent>   |:silent exec 'vertical resize '.(match(g:proj_flags, '\Ct')!=-1 && winwidth('.') > g:proj_window_width?(g:proj_window_width):(winwidth('.') + g:proj_window_increment))
nmap <buffer> <silent> \<Down> <C-Down>
nmap <buffer> <silent> \<Up> <C-Up>
nmap <buffer> <silent> \v ç
nnoremap <buffer> <silent> \I :echo Project_GetFname(line('.'))
nmap <buffer> <silent> \o <C-CR>
nmap <buffer> <silent> \s <S-CR>
nnoremap <buffer> <F1> :let g:proj_doinghelp = 1<F1>
nmap <buffer> <silent> <4-RightMouse>  
nmap <buffer> <silent> <3-RightMouse>  
nmap <buffer> <silent> <2-RightMouse>  
nmap <buffer> <silent> <RightMouse>  
nnoremap <buffer> <silent> <3-LeftMouse> <Nop>
nnoremap <buffer> <silent> <C-LeftMouse> <LeftMouse>
nmap <buffer> <silent> <C-2-LeftMouse> <C-CR>
nnoremap <buffer> <silent> <S-LeftMouse> <LeftMouse>
nnoremap <buffer> <silent> <M-2-LeftMouse> ç
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
set list
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
let s:l = 6054 - ((6053 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6054
normal! 0
wincmd w
argglobal
edit .gvimrc
noremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
noremap <buffer> <silent> [] :call search('^\s*endf*\%[unction]\>', "bW")
noremap <buffer> <silent> [[ :call search('^\s*fu\%[nction]\>', "bW")
noremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
noremap <buffer> <silent> ][ :call search('^\s*endf*\%[unction]\>', "W")
noremap <buffer> <silent> ]] :call search('^\s*fu\%[nction]\>', "W")
setlocal noarabic
setlocal noautoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal nocopyindent
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
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
setlocal formatoptions=croql
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
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
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal nowinfixheight
setlocal wrap
setlocal wrapmargin=0
let s:l = 112 - ((19 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
112
normal! 044l
wincmd w
argglobal
edit .vim/ftplugin/c_MakeDoxygenComment.vim
noremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
noremap <buffer> <silent> [] :call search('^\s*endf*\%[unction]\>', "bW")
noremap <buffer> <silent> [[ :call search('^\s*fu\%[nction]\>', "bW")
noremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
noremap <buffer> <silent> ][ :call search('^\s*endf*\%[unction]\>', "W")
noremap <buffer> <silent> ]] :call search('^\s*fu\%[nction]\>', "W")
setlocal noarabic
setlocal noautoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal nocopyindent
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
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
setlocal formatoptions=croql
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
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
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal nowinfixheight
setlocal wrap
setlocal wrapmargin=0
let s:l = 80 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
80
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 24 + 88) / 177)
exe '2resize ' . ((&lines * 34 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 152 + 88) / 177)
exe '3resize ' . ((&lines * 33 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 152 + 88) / 177)
set winheight=1 winwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
