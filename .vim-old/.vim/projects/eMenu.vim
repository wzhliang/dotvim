set nocompatible
let s:cpo_save=&cpo
set cpo&vim
imap <F5> :PreviewClass
imap <S-F4> :CompletePattern
imap <F4> :SelectCompletion
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
map \cc <Plug>CRV_CRefVimInvoke
map \cw <Plug>CRV_CRefVimAsk
nmap \cr <Plug>CRV_CRefVimNormal
vmap \cr <Plug>CRV_CRefVimVisual
nmap \ctsta <Plug>CleartoolSetActiv
nmap \qdif <Plug>CleartoolConsoleQueryDiff
nmap \pdif <Plug>CleartoolConsolePredDiff
nmap \ctxl <Plug>CleartoolGraphVerTree
nmap \cthist <Plug>CleartoolListHistory
nmap \ctunco <Plug>CleartoolUnCheckout
nmap \ctcou <Plug>CleartoolCOUnres
nmap \ctcor <Plug>CleartoolCO
nmap \ctci <Plug>CleartoolCI
map \bs <Plug>SplitBufExplorer
map \be <Plug>StartBufExplorer
noremap \as :call AN_Map("")
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
map \[s <Plug>HMBStop
map \[i <Plug>HMBStart
vmap \x <Plug>VisualTraditional
vmap \c <Plug>VisualTraditionalj
nmap \x <Plug>Traditional
nmap \c <Plug>Traditionalj
map \di <Plug>LoadDrawIt
nmap <F9> :make
nmap <F4> \be
map <M-Up> :bp
map <M-Down> :bn
nmap <F5> :Buf
vmap <F3> "+y
map <F2> :w
nmap <C-CR> i
noremap <Plug>VisualFirstLine :call EnhancedCommentify('', 'first',				    line("'<"), line("'>"))
noremap <Plug>VisualTraditional :call EnhancedCommentify('', 'guess',				    line("'<"), line("'>"))
noremap <Plug>VisualDeComment :call EnhancedCommentify('', 'decomment',				    line("'<"), line("'>"))
noremap <Plug>VisualComment :call EnhancedCommentify('', 'comment',				    line("'<"), line("'>"))
noremap <Plug>FirstLine :call EnhancedCommentify('', 'first')
noremap <Plug>Traditional :call EnhancedCommentify('', 'guess')
noremap <Plug>DeComment :call EnhancedCommentify('', 'decomment')
noremap <Plug>Comment :call EnhancedCommentify('', 'comment')
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
imap \x <Plug>Traditional
imap \c <Plug>Traditionalji
abbr Ha <font class="note"></font>
abbr Hq <font class="question">Q:</font>
abbr Jmain public static void main( String []arg){}
abbr Jout System.out.println( );
abbr DBX DBG(DBG_ERROR|DBG_, "");
abbr DBW DBG(DBG_WARN|DBG_, "");
abbr DBI DBG(DBG_INFO|DBG_, "");
abbr DBR DBGRETURN(DBG_INFO|DBG_, "");
abbr DBE DBGENTRY(DBG_INFO|DBG_, "");
cabbr ctpwv !cleartool pwv
cabbr ctdiff !start cleartool diff -graphical -pred "%"
cabbr ctxlsv !start clearvtree.exe "%"
cabbr ctcoc !cleartool lsco -cview -short -me
cabbr ctver !cleartool describe -aattr version "%"
cabbr ctdesc !cleartool describe "%"
cabbr ctunco !cleartool unco "%" 
cabbr ct !cleartool
abbr fo of
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=2
set backup
set bufhidden=delete
set buftype=nofile
set cindent
set expandtab
if &filetype != 'vim'
set filetype=vim
endif
set guifont=7x13:h9
set guioptions=gmrLt
set hidden
set shiftwidth=4
set smartcase
set statusline=%-F%-m%-h%-r%-y\ buf\ %-n%=line\ %l,\ col\ %-2c\ %p%%
set noswapfile
if &syntax != 'cpp'
set syntax=cpp
endif
set tabstop=4
set textwidth=79
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd C:\TEMP
set shortmess=aoO
badd +27 ~\public_html\stat.htm
badd +956 ~\work\iboz\src\emenu.c
badd +1 ~\shishi\c\array\oneelement.c
badd +9 ~\.todo
badd +966 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\graphics\gw\src\gw_listwgt.c
badd +43 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\graphics\gw\src\gw_menuwgt.c
badd +227 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\inc\mw\gw_wgt.h
badd +167 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\graphics\gw\src\gw_statwgt.c
badd +550 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\graphics\gw\src\gw_api.c
badd +76 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\inc\mw\gw_api.h
badd +140 D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\inc\mw\gw_core.h
args D:\Snapshots\wenzhil_iboz_code\ibozapper_src\middleware\stblite\code\inc\mw\gw_core.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert resize ' . ((&columns * 30 + 79) / 159)
wincmd w
exe 'vert resize ' . ((&columns * 128 + 79) / 159)
wincmd w
argglobal
enew
file __Tag_List__
nnoremap <buffer> * :silent! %foldopen!
nnoremap <buffer> + :silent! foldopen
nnoremap <buffer> - :silent! foldclose
nnoremap <buffer> q :close
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <kMultiply> :silent! %foldopen!
nnoremap <buffer> <kMinus> :silent! foldclose
nnoremap <buffer> <kPlus> :silent! foldopen
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
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keymap=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
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
silent! normal! zE
5,70fold
72,74fold
76,405fold
407,414fold
5
normal zo
72
normal zo
76
normal zo
407
normal zo
wincmd w
argglobal
edit ~\work\iboz\src\emenu.c
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
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal nowinfixheight
setlocal wrap
setlocal wrapmargin=0
34
normal zo
462
normal zo
let s:l = 2101 - ((4 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2101
normal! 012l
wincmd w
2wincmd w
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save