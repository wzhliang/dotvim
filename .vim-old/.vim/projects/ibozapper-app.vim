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
nmap ,hx wbF<df>f<df>
nmap ,ht wbi<tt>ea</tt>bb
nmap ,hs wbi<strong>ea</strong>bb
nmap ,hu wbi<u>ea</i>bb
nmap ,hi wbi<i>ea</i>bb
nmap ,he wbi<em>ea</em>bb
nmap ,hb wbi<b>ea</b>bb
nmap ,h6 _i<h6>A</h6>
nmap ,h5 _i<h5>A</h5>
nmap ,h4 _i<h4>A</h4>
nmap ,h3 _i<h3>A</h3>
nmap ,h2 _i<h2>A</h2>
nmap ,h1 _i<h1>A</h1>
nmap ,mh wbgueyei<ea></pa>bba
map Q gq
vmap \x <Plug>VisualTraditional
vmap \c <Plug>VisualTraditionalj
nmap \x <Plug>Traditional
nmap \c <Plug>Traditionalj
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
noremap <Plug>VisualFirstLine :call EnhancedCommentify('', 'first',				    line("'<"), line("'>"))
noremap <Plug>VisualTraditional :call EnhancedCommentify('', 'guess',				    line("'<"), line("'>"))
noremap <Plug>VisualDeComment :call EnhancedCommentify('', 'decomment',				    line("'<"), line("'>"))
noremap <Plug>VisualComment :call EnhancedCommentify('', 'comment',				    line("'<"), line("'>"))
noremap <Plug>FirstLine :call EnhancedCommentify('', 'first')
noremap <Plug>Traditional :call EnhancedCommentify('', 'guess')
noremap <Plug>DeComment :call EnhancedCommentify('', 'decomment')
noremap <Plug>Comment :call EnhancedCommentify('', 'comment')
nmap <F9> :make
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
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set backup
set cindent
set comments=sr:/*,mb:*,el:*/,://
set expandtab
set formatoptions=croql
set guifont=-sni-97480i3-Medium-OT-Normal--13-130-75-75-C-60-iso8859-3
set guioptions=agimrLt
set hlsearch
set mouse=a
set ruler
set shiftwidth=4
set smartcase
set statusline=%-F%-m%-h%-r%-y\ buf\ %-n%=line\ %l,\ col\ %-2c\ %p%%
if &syntax != 'c'
set syntax=c
endif
set tabstop=4
set textwidth=79
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/iboz/src
set shortmess=aoO
badd +111 fl_lists.c
badd +438 fl_settings.c
badd +0 llhash_iboz.c
badd +0 stblite_stub.c
badd +0 tst_lists.c
badd +1 fl_lists.h
badd +62 fl_settings.h
badd +1 gentypes.h
badd +0 ibozapps_featlib.h
badd +0 stblite_stub.h
badd +81 ~/work/iboz/doc/stblite/mw/dsm/inc/dsmfs.h
args ~/work/iboz/doc/stblite/mw/dsm/inc/dsmfs.h
set splitbelow splitright
set nosplitbelow
set nosplitright
normal t
set winheight=1 winwidth=1
argglobal
edit fl_settings.c
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
setlocal comments=sr:/*,mb:*,el:*/,://
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
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
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
setlocal wrap
setlocal wrapmargin=0
silent! normal zE
153,175fold
201,262fold
153
normal zc
201
normal zc
let s:l = 153 - ((43 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal zt
153
normal 0
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save