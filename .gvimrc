color Mustang
"set gfn=Liberation\ Mono\ 10
"set gfn=Ubuntu\ Mono\ 11
if has('gui_gtk2')
    set gfn=Inconsolata\ Bold\ 11
elseif has('mac')
    set gfn=Menlo\ Regular:h11
endif
set list
set mousem=popup
set nomousehide
if has('gui_gtk2')
    set guioptions+=T
endif
set lines=50       " height = 50 lines
set columns=100        " width = 100 columns
set selectmode=mouse,key
"set background=light   " adapt colors for background
set keymodel=
