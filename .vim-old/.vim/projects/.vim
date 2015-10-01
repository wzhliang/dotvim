set nocompatible
let s:cpo_save=&cpo
set cpo&vim
map! <F8>hwb <wbr>
map! <F8>hti <title></title>bhhi
map! <F8>hta 	
map! <F8>hsn <style notation=""></style>k/"a
map! <F8>hra <range from="" until="">Bhi
map! <F8>hqu <q></q>hhhi
map! <F8>hpp <p>
map! <F8>hov <overlay src="">hi
map! <F8>hno <note></note>bhhi
map! <F8>hme <meta name="" content="">?""??a
map! <F8>hlk <link href="">hi
map! <F8>hla <lang lang=""></lang>?"i
map! <F8>hin <Insert></ins>bhhi
map! <F8>hht <html></html>O
map! <F8>hhe <head></head>O
map! <F8>hfo <font size=></font>bhhhi
map! <F8>hfn <fn></fn>bhhi
map! <F8>hfi <fig src=""></fig>?"i
map! <F8>hdv <div></div>bhhi
map! <F8>hde <Del></del>bhhi
map! <F8>hdd <dd></dd>bhhi
map! <F8>hcr <credit></credit>bhhi
map! <F8>hca <caption></caption>bhhi
map! <F8>hbd <body></body>O
map! <F8>hbf <basefont size=>i
map! <F8>hbh <base href="">hi
map! <F8>hba <banner></banner>bhhi
map! <F8>hau <au></au>bhhi
map! <F8>hac <acronym></acronym>bhhi
map! <F8>hab <abbrev></abbrev>bhhi
imap <F8>h> &gt;
imap <F8>h< &lt;
imap <F8>h" &quot;
imap <F8>hcp &copy;
imap <F8>h& &amp;
imap <F8>hdl <dl>  <li>mZa<BS><BS></dl>`Za
imap <F8>hdt <dt>mZa<dd>DEFINITION`Za
imap <F8>hmu <mu>  <li>mZa<BS><BS></mu>`Za
imap <F8>hdi <dir>  <li>mZa<BS><BS></dir>`Za
imap <F8>hol <ol>  <li>mZa<BS><BS></ol>`Za
imap <F8>hul <ul>  <li>mZa<BS><BS></ul>`Za
imap <F8>hlh <lh>mZa</lh>`Za
imap <F8>hli <li>mZa`Za
imap <F8>hvv <var>mZa</var>`Za
imap <F8>huu <u>mZa</u>`Za
imap <F8>htt <tt>mZa</tt>`Za
imap <F8>hsp <sup>mZa</sup>`Za
imap <F8>hsb <sub>mZa</sub>`Za
imap <F8>hst <strong>mZa</strong>`Za
imap <F8>hsm <small>mZa</small>`Za
imap <F8>hsa <samp>mZa</samp>`Za
imap <F8>hsk <strike>mZa</strike>`Za
imap <F8>hpr <pre>mZa</pre>`Za
imap <F8>hnb <nobr>mZa</nobr>`Za
imap <F8>hkb <kbd>mZa</kbd>`Za
imap <F8>hit <i>mZa</i>`Za
imap <F8>hem <em>mZa</em>`Za
imap <F8>hdf <dfn>mZa</dfn>`Za
imap <F8>hci <cite>mZa</cite>`Za
imap <F8>hce <center>mZa</center>`Za
imap <F8>hbl <blockquote>mZa</blockquote>`Za
imap <F8>hbk <blink>mZa</blink>`Za
imap <F8>hbi <big>mZa</big>`Za
imap <F8>hbo <b>mZa</b>`Za
imap <F8>had <address>mZa</address>`Za
imap <F8>hh6 <h6>mZa</h6>`Za
imap <F8>hh5 <h5>mZa</h5>`Za
imap <F8>hh4 <h4>mZa</h4>`Za
imap <F8>hh3 <h3>mZa</h3>`Za
imap <F8>hh2 <h2>mZa</h2>`Za
imap <F8>hh1 <h1>mZa</h1>`Za
imap <F8>hhr <hr>
imap <F8>hbr <br>
imap <F8>him <img src="URL" alt="mZa">`Za
imap <F8>hah <a href="mZa">TAG</a>`Za
imap <F8>han <a name="mZa">`Za
imap <F8>hssi <!--#include file="mZa" -->`Za
imap <F8>hco <code>mZa</code>`Za
imap <F8>csw switch(  mZa){default:break;}`Zi
imap <F8>cdo do{o} while(  mZa);`Zi
imap <F8>cwh while(  mZa){o}`Zi
imap <F8>cfo for(;mZa;){o}`Zi
imap <F8>cel elsemZa{o}'Z
imap <F8>cei else if(  mZa){o}`Zi
imap <F8>cif if(  mZa){o}`Zi
imap <F8>cgr {  }<Left><Left>
imap <F8>cubl [{mZ<%%dd'Zdd
imap <F8>cbl {o}O 
imap <F8>cin #include 
imap <F8>cde #define 
imap <F8>cuco ^xxx$xxxa
imap <F8>cco /*  */<Left><Left><Left>
imap <F8>csi :checkpath
imap <F7> <F8>
imap <F3> <F8>
imap <F4> <F8>
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
nnoremap Zr :se formatoptions-=ro
nnoremap ZR :se formatoptions+=ro
nnoremap Zc O/**<BS>**/<Up> 
map \bs <Plug>SplitBufExplorer
map \be <Plug>StartBufExplorer
nmap <C-PageDown> L$
nmap <C-PageUp> H
map <M-Up> :bp
map <M-Down> :bn
map <F2> :w
nmap <C-CR> i
vmap <F5> :call Table()
vmap <F8>h> i&gt;
nmap <F8>h> i&gt;
vmap <F8>h< i&lt;
nmap <F8>h< i&lt;
vmap <F8>h" `>a&quot;`<i&quot;
nmap <F8>h" i&quot;
vmap <F8>hcp i&copy;
nmap <F8>hcp i&copy;
vmap <F8>h& i&amp;
nmap <F8>h& i&amp;
vmap <F8>hdl `>a</dl>`<i<dl>  <li>l
nmap <F8>hdl O<dl>  <li>LIST ITEM<BS><BS></dl>4b2cw
vmap <F8>hdt `>a<dd>DEFINITION `<i<dt>5wcw
nmap <F8>hdt O<dt>TERM<dd>DEFINITION5bcw
vmap <F8>hmu `>a</mu>:'<+1,'>+1s/^/    <li>/`<i<mu>    <li>/<li><.mu>4x4X
nmap <F8>hmu O<mu>  <li>LIST ITEM<BS><BS></mu>4b2cw
vmap <F8>hdi `>a</dir>:'<+1,'>+1s/^/    <li>/`<i<dir>    <li>/<li><.dir>4x4X
nmap <F8>hdi O<dir>  <li>LIST ITEM<BS><BS></dir>4b2cw
vmap <F8>hol `>a</ol>:'<+1,'>+1s/^/    <li>/`<i<ol>    <li>/<li><.ol>4x4X
nmap <F8>hol O<ol>  <li>LIST ITEM<BS><BS></ol>4b2cw
vmap <F8>hul `>a</ul>:'<+1,'>+1s/^/    <li>/`<i<ul>    <li>/<li><.ul>4x4X
nmap <F8>hul O<ul>  <li>LIST ITEM<BS><BS></ul>4b2cw
vmap <F8>hlh `>a</lh>`<i<lh>l
nmap <F8>hlh O<lh>LIST HEADER</lh>4b2cw
vmap <F8>hli `<i<li>
nmap <F8>hli O<li>LIST ITEM2b2cw
vmap <F8>hvv `>a</var>`<i<var>l
nmap <F8>hvv O<var>TEXT</var>3bcw
vmap <F8>huu `>a</u>`<i<u>l
nmap <F8>huu O<u>TEXT</u>3bcw
vmap <F8>htt `>a</tt>`<i<tt>l
nmap <F8>htt O<tt>TEXT</tt>3bcw
vmap <F8>hsp `>a</sup>`<i<sup>l
nmap <F8>hsp O<sup>TEXT</sup>3bcw
vmap <F8>hsb `>a</sub>`<i<sub>l
nmap <F8>hsb O<sub>TEXT</sub>3bcw
vmap <F8>hst `>a</strong>`<i<strong>l
nmap <F8>hst O<strong>TEXT</strong>3bcw
vmap <F8>hsm `>a</small>`<i<small>l
nmap <F8>hsm O<small>TEXT</small>3bcw
vmap <F8>hsa `>a</samp>`<i<samp>l
nmap <F8>hsa O<samp>TEXT</samp>3bcw
vmap <F8>hsk `>a</strike>`<i<strike>l
nmap <F8>hsk O<strike>TEXT</strike>3bcw
vmap <F8>hpr `>a</pre>`<i<pre>l
nmap <F8>hpr O<pre>TEXT</pre>3bcw
vmap <F8>hnb `>a</nobr>`<i<nobr>l
nmap <F8>hnb O<nobr>TEXT</nobr>3bcw
vmap <F8>hkb `>a</kbd>`<i<kbd>l
nmap <F8>hkb O<kbd>TEXT</kbd>3bcw
vmap <F8>hit `>a</i>`<i<i>l
nmap <F8>hit O<i>TEXT</i>3bcw
vmap <F8>hem `>a</em>`<i<em>l
nmap <F8>hem O<em>TEXT</em>3bcw
vmap <F8>hdf `>a</dfn>`<i<dfn>l
nmap <F8>hdf O<dfn>TEXT</dfn>3bcw
vmap <F8>hci `>a</cite>`<i<cite>l
nmap <F8>hci O<cite>TEXT</cite>3bcw
vmap <F8>hce `>a</center>`<i<center>l
nmap <F8>hce O<center>TEXT</center>3bcw
vmap <F8>hbl `>a</blockquote>`<i<blockquote>l
nmap <F8>hbl O<blockquote>TEXT</blockquote>3bcw
vmap <F8>hbk `>a</blink>`<i<blink>l
nmap <F8>hbk O<blink>TEXT</blink>3bcw
vmap <F8>hbi `>a</big>`<i<big>l
nmap <F8>hbi O<big>TEXT</big>3bcw
vmap <F8>hbo `>a</b>`<i<b>l
nmap <F8>hbo O<b>TEXT</b>3bcw
vmap <F8>had `>a</address>`<i<address>l
nmap <F8>had O<address>TEXT</address>3bcw
vmap <F8>hh6 `>a</h6>`<i<h6>l
nmap <F8>hh6 O<h6>HEADING</h6>3bcw
vmap <F8>hh5 `>a</h5>`<i<h5>l
nmap <F8>hh5 O<h5>HEADING</h5>3bcw
vmap <F8>hh4 `>a</h4>`<i<h4>l
nmap <F8>hh4 O<h4>HEADING</h4>3bcw
vmap <F8>hh3 `>a</h3>`<i<h3>l
nmap <F8>hh3 O<h3>HEADING</h3>3bcw
vmap <F8>hh2 `>a</h2>`<i<h2>l
nmap <F8>hh2 O<h2>HEADING</h2>3bcw
vmap <F8>hh1 `>a</h1>`<i<h1>l
nmap <F8>hh1 O<h1>HEADING</h1>3bcw
vmap <F8>hhr `<i<hr>
nmap <F8>hhr O<hr>
vmap <F8>hbr `<i<br>
nmap <F8>hbr O<br>
vmap <F8>him `>a" alt="IMAGE">`<i<img src="l
nmap <F8>him O<img src="URL" alt="IMAGE">6bcw
vmap <F8>hah `>a</a>`<i<a href="URL">2bcw
nmap <F8>hah O<a href="URL">TAG</a>5bcw
vmap <F8>han `>a">`<i<a name="l
nmap <F8>han O<a name="NAME">2bcw
nmap <F8>hssi O<!--#include file="mZa" -->`Za
vmap <F8>hco `>a</code>`<i<code>l
nmap <F8>hco O<code>TEXT</code>3bcw
vmap <F8>csw `<Oswitch(  mZa){case CASE:'<>'>.`>obreak;default:break;}/CASE`Zi
nmap <F8>csw Oswitch(  mZa){default:break;}`Zi
vmap <F8>cdo `<Odo{`>o} while(  mZa);'<>'>`Zi
nmap <F8>cdo Odo{o} while(  mZa);`Zi
vmap <F8>cwh `<Owhile(  mZa){`>o}'<>'>`Zi
nmap <F8>cwh Owhile(  mZa){o}`Zi
vmap <F8>cfo `<Ofor(;mZa;){`>o}'<>'>`Zi
nmap <F8>cfo Ofor(;mZa;){o}`Zi
vmap <F8>cel `<OelsemZa{`>o}'<>'>'Z
nmap <F8>cel OelsemZa{o}'Z
vmap <F8>cei `<Oelse if(  mZa){`>o}'<>'>`Zi
nmap <F8>cei Oelse if(  mZa){o}`Zi
vmap <F8>cif `<Oif(  mZa){`>o}'<>'>`Zi
nmap <F8>cif Oif(  mZa){o}`Zi
vmap <F8>cgr `>a }`<i{ `<
nmap <F8>cgr i{  }<Left><Left>
vmap <F8>cubl [{mZ<%%dd'Zdd
nmap <F8>cubl [{mZ<%%dd'Zdd
vmap <F8>cbl '<O{'>o}'<>'>
nmap <F8>cbl O{o}O 
nmap <F8>cin 0i#include 
nmap <F8>cde 0i#define 
vmap <F8>cuco '<:s/\\/\\* //'>:s/ \\*\\///'</Z-no-highlight-Z
nmap <F8>cuco ^xxx$xxx
vmap <F8>cco `>a */`<i/* `<
nmap <F8>cco ^i/* A */
vmap <F8>csi :checkpath
nmap <F8>csi :checkpath
vmap <F7> <F8>
nmap <F7> <F8>
vmap <F3> "+y
nmap <F3> <F8>
vmap <F4> <F8>
nmap <F4> \be
nnoremap <SNR>13_Paste "=@+.'xy'gPFx"_2x:echo
map <C-F9> :call CVIM_Run(0):cwin
map <F9> :call CVIM_Link():cwin
map <M-F9> :w:call CVIM_Compile():cwin
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
vmap <C-PageDown> L$
vmap <C-PageUp> H
inoremap 	 =InsertTabWrapper() 
abbr DBX DBG(DBG_ERROR|DBG_, "");
abbr DBW DBG(DBG_WARN|DBG_, "");
abbr DBI DBG(DBG_INFO|DBG_, "");
abbr DBR DBGRETURN(DBG_INFO|DBG_, "");
abbr DBE DBGENTRY(DBG_INFO|DBG_, "");
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=2
set backup
set cindent
set expandtab
set guifont=MS_Hei:h11:cGB2312
set hidden
set ignorecase
set iminsert=0
set imsearch=0
set shellpipe=2>
set shiftwidth=3
set smartcase
set statusline=%-F%-m%-h%-r%-y\ buf\ %-n%=line\ %l,\ col\ %-2c\ %p%%
if &syntax != 'c'
set syntax=c
endif
set tabstop=3
set textwidth=90
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\shishi\perl\newFunc
set shortmess=aoO
badd +1 \wenzhil\shishi\vim\projects\proj.vim
badd +262 newFunc.pl
badd +1 ..\..\hi\hello.c
args newFunc.pl
set splitbelow splitright
normal _|
split
normal 1k
normal w
set nosplitbelow
set nosplitright
normal t
set winheight=1 winwidth=1
exe 'resize ' . ((&lines * 4 + 23) / 47)
normal w
exe 'resize ' . ((&lines * 40 + 23) / 47)
normal w
argglobal
edit ..\..\hi\hello.c
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
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
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
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal path=
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=90
setlocal thesaurus=
setlocal wrap
setlocal wrapmargin=0
silent! normal zE
let s:l = 11 - ((0 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal zt
11
normal 0
normal w
argglobal
edit \wenzhil\shishi\vim\projects\proj.vim
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <F3> A = new ^yE<End>pA();<Left><Left>
inoremap <buffer> <F2> A = new ^yE<End>pA();
inoremap <buffer> E Exception
inoremap <buffer> e Exception
inoremap <buffer> S String
inoremap <buffer> s String
inoremap <buffer> V Void
inoremap <buffer> v void
inoremap <buffer> D Double
inoremap <buffer> d Double
inoremap <buffer> C Char
inoremap <buffer> c char
inoremap <buffer> B Boolean
inoremap <buffer> b boolean
inoremap <buffer> L Long
inoremap <buffer> l long
inoremap <buffer> I Integer
inoremap <buffer> i int
inoremap <buffer> c </code>
inoremap <buffer> C <code>
inoremap <buffer> E e.printStackTrace();
inoremap <buffer> f false
inoremap <buffer> t true
inoremap <buffer> e System.err.println(X);FXs
inoremap <buffer> o System.out.println(X);FXs
inoremap <buffer> m public static void main(String args[])
inoremap <buffer> ,a package
inoremap <buffer> ,o protected
inoremap <buffer> ,P private
inoremap <buffer> ,p public
inoremap <buffer> ,e extends
inoremap <buffer> ,y synchronized
inoremap <buffer> ,s static
inoremap <buffer> ,f final
inoremap <buffer> ,m import
inoremap <buffer> ,I implements
inoremap <buffer> ,i interface
inoremap <buffer> ,c class
inoremap <buffer> :R throw
inoremap <buffer> :T throws
inoremap <buffer> :c catch
inoremap <buffer> :t try
inoremap <buffer> :r return
inoremap <buffer> :i if
inoremap <buffer> :d default
inoremap <buffer> :b break
inoremap <buffer> :C case
inoremap <buffer> :s switch
inoremap <buffer> :w while
inoremap <buffer> :f finally
let &cpo=s:cpo_save
unlet s:cpo_save
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
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
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
setlocal formatoptions=tcq
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
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=90
setlocal thesaurus=
setlocal wrap
setlocal wrapmargin=0
silent! normal zE
let s:l = 77 - ((32 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal zt
77
normal 06l
normal w
normal 2w
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
