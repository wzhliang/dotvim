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
nmap d :cs find d =expand("<cword>")
nmap i :cs find i ^=expand("<cfile>")
nmap f :cs find f =expand("<cfile>")
nmap e :cs find e =expand("<cword>")
nmap t :cs find t =expand("<cword>")
nmap c :cs find c =expand("<cword>")
nmap g :cs find g =expand("<cword>")
nmap s :cs find s =expand("<cword>")
nmap   
vmap [% [%m'gv``
nmap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : 
nmap <silent> \a, \WS:'y,'zs/\(\S\)\s\+/\1 /ge
nmap <silent> \abox \WS:let b:alignmaps_iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e')
nmap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e
nmap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e
nmap <silent> \adec \WS:'a,'zs/\([^ \t/(]\)\([*&]\)/\1 \2/e
nmap <silent> \adef \WS:AlignPush
nmap <silent> \anum \WS:'a,'zs/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge
nmap <silent> \Htd \WS:'y,'zs%<[tT][rR]><[tT][dD][^>]\{-}>\|</[tT][dD]><[tT][dD][^>]\{-}>\|</[tT][dD]></[tT][rR]>%@&@%g
nmap <silent> \T| \WS:AlignCtrl mIp0P0=r |
nmap <silent> \T, \WS:AlignCtrl mIp0P1=r ,
nmap <silent> \Ts, \WS:AlignCtrl mIp0P1=r ,
nmap <silent> \T: \WS:AlignCtrl mIp1P1=r :
nmap <silent> \T< \WS:AlignCtrl mIp0P0=r <
nmap <silent> \T= \WS:'a,'z-1s/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
nmap <silent> \T@ \WS:AlignCtrl mIp0P0=r @
nmap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/
nmap <silent> \t| \WS:AlignCtrl mIp0P0=l |
nmap <silent> \t, \WS:AlignCtrl mIp0P1=l ,
nmap <silent> \ts, \WS:AlignCtrl mIp0P0=l ,
nmap <silent> \t: \WS:AlignCtrl mIp1P1=l :
nmap <silent> \t; \WS:AlignCtrl mIp0P0=l ;
nmap <silent> \t< \WS:AlignCtrl mIp0P0=l <
nmap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
nmap <silent> \t? \WS:AlignCtrl mIp0P0=l ?
nmap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/
nmap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/
nmap <silent> \tsq \WS:'a,.ReplaceQuotedSpaces
nmap <silent> \tt \WS:AlignCtrl mIp1P1=l \\\@<!& \\\\
nmap <silent> \t@ :AlignCtrl mIp1P1=l @
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
vmap <silent> \Htd :<BS><BS><BS>
vmap <silent> \tt :<BS><BS><BS>
vmap <silent> \tp@ :<BS><BS><BS>
vmap <silent> \tsq :<BS><BS><BS>
vmap <silent> \tsp :<BS><BS><BS>
vmap <silent> \tab :<BS><BS><BS>
vmap <silent> \t@ :<BS><BS><BS>
vmap <silent> \t? :<BS><BS><BS>
vmap <silent> \t= :<BS><BS><BS>
vmap <silent> \t< :<BS><BS><BS>
vmap <silent> \t; :<BS><BS><BS>
vmap <silent> \t: :<BS><BS><BS>
vmap <silent> \ts, :<BS><BS><BS>
vmap <silent> \t, :<BS><BS><BS>
vmap <silent> \t| :<BS><BS><BS>
vmap <silent> \anum :B s/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge
vmap <silent> \afnc :<BS><BS><BS>
vmap <silent> \adef :<BS><BS><BS>
vmap <silent> \adec :<BS><BS><BS>
vmap <silent> \ascom :<BS><BS><BS>
vmap <silent> \acom :<BS><BS><BS>
vmap <silent> \abox :<BS><BS><BS>
vmap <silent> \a, :<BS><BS><BS>
vmap <silent> \a? :<BS><BS><BS>
vmap <silent> \Tsp :<BS><BS><BS>
vmap <silent> \T@ :<BS><BS><BS>
vmap <silent> \T= :<BS><BS><BS>
vmap <silent> \T< :<BS><BS><BS>
vmap <silent> \T: :<BS><BS><BS>
vmap <silent> \Ts, :<BS><BS><BS>
vmap <silent> \T, :<BS><BS><BS>
vmap <silent> \T| :<BS><BS><BS>
map <silent> \tW@ :AlignCtrl mWp1P1=l @
omap <silent> \t@ :AlignCtrl mIp1P1=l @
map <silent> \t~ \WS:AlignCtrl mIp0P0=l ~
omap <silent> \tt \WS:AlignCtrl mIp1P1=l \\\@<!& \\\\
omap <silent> \tsq \WS:'a,.ReplaceQuotedSpaces
omap <silent> \tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/
omap <silent> \tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/
omap <silent> \t? \WS:AlignCtrl mIp0P0=l ?
omap <silent> \t= \WS:'a,'zs/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
omap <silent> \t< \WS:AlignCtrl mIp0P0=l <
omap <silent> \t; \WS:AlignCtrl mIp0P0=l ;
omap <silent> \t: \WS:AlignCtrl mIp1P1=l :
omap <silent> \ts, \WS:AlignCtrl mIp0P0=l ,
omap <silent> \t, \WS:AlignCtrl mIp0P1=l ,
map <silent> \t# \WS:AlignCtrl mIp0P0=l #
omap <silent> \t| \WS:AlignCtrl mIp0P0=l |
map <silent> \T~ \WS:AlignCtrl mIp0P0=r ~
omap <silent> \Tsp \WS:'a,.s/^\(\s*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\s\+','@','g'),'\')/
map <silent> \Tab \WS:'a,.s/^\(\t*\)\(.*\)/\=submatch(1).escape(substitute(submatch(2),'\t','@','g'),'\')/
omap <silent> \T@ \WS:AlignCtrl mIp0P0=r @
map <silent> \T? \WS:AlignCtrl mIp0P0=r ?
omap <silent> \T= \WS:'a,'z-1s/\s\+\([*/+\-%|&\~^]\==\)/ \1/e
omap <silent> \T< \WS:AlignCtrl mIp0P0=r <
map <silent> \T; \WS:AlignCtrl mIp0P0=r ;
omap <silent> \T: \WS:AlignCtrl mIp1P1=r :
omap <silent> \Ts, \WS:AlignCtrl mIp0P1=r ,
omap <silent> \T, \WS:AlignCtrl mIp0P1=r ,
map <silent> \T# \WS:AlignCtrl mIp0P0=r #
omap <silent> \T| \WS:AlignCtrl mIp0P0=r |
omap <silent> \Htd \WS:'y,'zs%<[tT][rR]><[tT][dD][^>]\{-}>\|</[tT][dD]><[tT][dD][^>]\{-}>\|</[tT][dD]></[tT][rR]>%@&@%g
omap <silent> \anum \WS:'a,'zs/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge
omap <silent> \adef \WS:AlignPush
omap <silent> \adec \WS:'a,'zs/\([^ \t/(]\)\([*&]\)/\1 \2/e
omap <silent> \ascom \WS:'a,.s/\/[*/]/@&@/e
omap <silent> \acom \WS:'a,.s/\/[*/]/@&@/e
omap <silent> \abox \WS:let b:alignmaps_iws=substitute(getline("'a"),'^\(\s*\).*$','\1','e')
map <silent> \a< \WS:AlignCtrl mIp1P1=l << >>
omap <silent> \a, \WS:'y,'zs/\(\S\)\s\+/\1 /ge
omap <silent> \a? \WS:AlignCtrl mIp1P1lC ? : : : : 
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
nmap <C-CR> i
nmap <Nul><Nul>d :vert scs find d =expand("<cword>")
nmap <Nul><Nul>i :vert scs find i ^=expand("<cfile>")
nmap <Nul><Nul>f :vert scs find f =expand("<cfile>")
nmap <Nul><Nul>e :vert scs find e =expand("<cword>")
nmap <Nul><Nul>t :vert scs find t =expand("<cword>")
nmap <Nul><Nul>c :vert scs find c =expand("<cword>")
nmap <Nul><Nul>g :vert scs find g =expand("<cword>")
nmap <Nul><Nul>s :vert scs find s =expand("<cword>")
nmap <Nul>d :scs find d =expand("<cword>")
nmap <Nul>i :scs find i ^=expand("<cfile>")
nmap <Nul>f :scs find f =expand("<cfile>")
nmap <Nul>e :scs find e =expand("<cword>")
nmap <Nul>t :scs find t =expand("<cword>")
nmap <Nul>c :scs find c =expand("<cword>")
nmap <Nul>g :scs find g =expand("<cword>")
nmap <Nul>s :scs find s =expand("<cword>")
noremap <Plug>VisualFirstLine :call EnhancedCommentify('', 'first',				    line("'<"), line("'>"))
noremap <Plug>VisualTraditional :call EnhancedCommentify('', 'guess',				    line("'<"), line("'>"))
noremap <Plug>VisualDeComment :call EnhancedCommentify('', 'decomment',				    line("'<"), line("'>"))
noremap <Plug>VisualComment :call EnhancedCommentify('', 'comment',				    line("'<"), line("'>"))
noremap <Plug>FirstLine :call EnhancedCommentify('', 'first')
noremap <Plug>Traditional :call EnhancedCommentify('', 'guess')
noremap <Plug>DeComment :call EnhancedCommentify('', 'decomment')
noremap <Plug>Comment :call EnhancedCommentify('', 'comment')
nnoremap <F5> :noh
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
nmap � :QuickFontSmaller
vmap � :Align =
nmap � :QuickFontBigger
imap <silent> \x <Plug>Traditional
imap <silent> \c <Plug>Traditionalji
iabbr _DFH <Home>=DoxyFuncComment()
iabbr _DFHp  =DoxyParamList()
iabbr _DMH =DoxyFileComment()
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
nmap <buffer> <silent> \v �
nmap <buffer> <silent> \<Up> <C-Up>
nmap <buffer> <silent> \<Down> <C-Down>
nnoremap <buffer> <silent> <M-2-LeftMouse> �
nnoremap <buffer> <silent> <S-LeftMouse> <LeftMouse>
nmap <buffer> <silent> <C-2-LeftMouse> <C-CR>
nnoremap <buffer> <silent> <C-LeftMouse> <LeftMouse>
nnoremap <buffer> <silent> <3-LeftMouse> <Nop>
nmap <buffer> <silent> <RightMouse>  
nmap <buffer> <silent> <2-RightMouse>  
nmap <buffer> <silent> <3-RightMouse>  
nmap <buffer> <silent> <4-RightMouse>  
nnoremap <buffer> <F1> :let g:proj_doinghelp = 1
nmap <buffer> <silent> � 
cnoremap <buffer> help let g:proj_doinghelp = 1
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