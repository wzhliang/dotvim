" VIM plugin, common SCM toolbar. {{{
" Author:               Wenzhi Liang
" Created:              July-2004
" Last Modified:        14-Sep-2004
" Note: external programs, including svn, diffuse, tkdiff, TortoiseProc must be in
" system path.
"
" $Id: scmtoolbar.vim,v 1.5 2004/09/14 09:36:35 wenzhil Exp $ }}}
"

"if exists('g:loaded_verctrl_toolbar') | finish | endif
let g:loaded_verctrl_toolbar=1

let g:verctrl_toolbar_4whom = 'svn'
" Default to ccase support
if !exists("g:verctrl_toolbar_4whom")
  let g:verctrl_toolbar_4whom = 'ccase'
endif

" helping functions
function! s:GetVersion0( fname )
  "Get the very first version (0) of the file on its branch
  let l:fname_ver0 = system('cleartool des -s -cview "' . a:fname . '"')
  let l:fname_ver0 = substitute(l:fname_ver0, "\n", "", "g")
  let l:fname_ver0 = substitute(l:fname_ver0, '[^/\\]*$', '0', '')
  return l:fname_ver0
endfunc

function! ScmDiffWithVerion0( fname )
  let l:version0 = <SID>GetVersion0( a:fname )
  silent exe '!cleartool diff -g ' . l:version0 . ' ' . expand('%') .  ' &'
endfunc

function! ScmLshis()
  "List revision history for the current file.
  silent exe '!cleartool lshis -g ' . expand("%") . ' &'
endfunc

function! SvnGuiDiff()
  "wrapper for gui diff under different platform"
  if has('win32')
    silent exe '! TortoiseProc.exe /command:diff /path:"' . expand("%") . ' &'
  else
    silent exe '!diffuse ' . expand ("%") . ' &'
  endif
endfunc

function! SvnGuiDiffPrev()
  "wrapper for gui diff under different platform"
  if has('win32')
    silent exe '! TortoiseProc.exe /command:diff /path:"' . expand("%") . ' &'
  else
    silent exe '!diffuse -r PREV ' . expand ("%") . ' &'
  endif
endfunc

function! SvnGuiConflictEditor()
  "List revision history for the current file.
  if has('win32')
    silent exe '!TortoiseProc.exe /command:log /path:' . expand("%") . ' &'
  else
    silent exe '!diffuse ' . expand("%") . ' &'
  endif
endfunc

function! SvnGuiLog()
  "List revision history for the current file.
  if has('win32')
    silent exe '!TortoiseProc.exe /command:log /path:' . expand("%") . ' &'
  else
    silent exe '!tkcvs status ' . expand("%:p:h") . ' &'
  endif
endfunc

com! ScmDiff0 call ScmDiffWithVerion0(expand('%'))
com! ScmListHistory call ScmLshis()

" Setup toolbar for ccase support
if g:verctrl_toolbar_4whom=='ccase'
  an ToolBar.-sep_vctb-     <Nop>
  an icon=commit      ToolBar.commit      :Ctci<CR>
  an icon=checkout    ToolBar.checkout    :Ctco<CR>
  an icon=vtree       ToolBar.vtree       :silent! Ctxlsv<CR>
  an icon=diff        ToolBar.diff        :silent! Ctdiff<CR>
  an icon=add         ToolBar.add         :Ctmk<CR>
  an icon=revert      ToolBar.revert      :Ctunco<CR>
  an icon=diff0       ToolBar.diff0       :ScmDiff0<CR>
  an icon=lshis       ToolBar.lshis       :ScmListHistory<CR>
" Setup toolbar for SVN support
" This needs the new VCScommand plugin (replacement of cvscommand for Vim7)
elseif g:verctrl_toolbar_4whom=='svn'
  an ToolBar.-sep_vctb-     <Nop>
  an icon=commit      ToolBar.commit      :VCSCommit<CR>
  " an icon=checkout    ToolBar.checkout    :<Nop>
  an icon=tksvn       ToolBar.tksvn       :call SvnGuiLog()<CR>
  an icon=vtree       ToolBar.vtree       :VCSLog<CR>
  an icon=diff        ToolBar.diff        :call SvnGuiDiff()<CR>
  an icon=diff0       ToolBar.diff0        :call SvnGuiDiffPrev()<CR>
  an icon=add         ToolBar.add         :VCSAdd<CR>
  an icon=revert      ToolBar.revert      :VCSRevert<CR>
  an icon=conflict    ToolBar.conflict    :call SvnGuiConflictEditor()<CR>
endif

"Common toolbar
tmenu ToolBar.commit        Commit
if g:verctrl_toolbar_4whom=='ccase'
  tmenu ToolBar.checkout      Check out
  tmenu ToolBar.vtree         Version tree
else "Assuming svn here. Nobody uses CVS these days anyway.
  tmenu ToolBar.vtree         svn log
  tmenu ToolBar.tksvn         Launch TKSVN GUI here
endif
tmenu ToolBar.diff          Diff against previous version
if g:verctrl_toolbar_4whom=='ccase'
  tmenu ToolBar.add           Make element
  tmenu ToolBar.revert        Undo checkout
  tmenu ToolBar.diff0         Diff against version 0 on the branch
  tmenu ToolBar.lshis         List history of the file
else
  tmenu ToolBar.add           Add into version control
  tmenu ToolBar.revert        Revert change
endif


" Mode line for embeding documents & code:
" vim:tw=78 nowrap shiftwidth=2 softtabstop=2 smartindent smarttab :
