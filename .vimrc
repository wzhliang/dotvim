" Vimrc file, http://phuzz.org

set nocompatible    " use vim defaults
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set smartcase       " ignore case when searching
"set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h

set autoindent     " always set autoindenting on
set diffopt+=vertical
"set smartindent        " smart indent
"set cindent            " cindent
"set noautoindent
"set smartindent
"set nocindent  

"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
"set sm             " show matching braces, somewhat annoying...
"set nowrap         " don't wrap lines
filetype plugin on

syntax on           " syntax highlighing
if has("gui_running")
    " See ~/.gvimrc
    set guifont=Monospace\ 10  " use this font
    set lines=50       " height = 50 lines
    set columns=100        " width = 100 columns
    set background=light   " adapt colors for background
    set selectmode=mouse,key,cmd
    set keymodel=
else
    colorscheme elflord    " use this color scheme
    set background=dark        " adapt colors for background
endif

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,php,asp  set autoindent
    au FileType cpp,c,java,sh,pl,php,asp  set smartindent
    au FileType cpp,c,java,sh,pl,php,asp  set cindent
    "au BufRead mutt*[0-9] set tw=72
    
    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf

    au BufEnter /work/biotector* setlocal shiftwidth=2
    au BufEnter /work/biotector* setlocal tabstop=2

    au BufEnter /work/ts7800* setlocal shiftwidth=4
    au BufEnter /work/ts7800* setlocal tabstop=4
endif

" Keyboard mappings
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
"map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
"map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
"map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
"map ,h :source $VIM/vim71/syntax/2html.vim<cr>:w<cr>:clo<cr>


" Common command line typos
"cmap W w
"cmap Q q

" Keyboard mapping for numeric keypad
"imap <Esc>OM <c-m>
" map <Esc>OM <c-m>
"imap <Esc>OP <nop>
" map <Esc>OP <nop>
"imap <Esc>OQ /
" map <Esc>OQ /
"imap <Esc>OR *
" map <Esc>OR *
"imap <Esc>OS -
" map <Esc>OS -

"imap <Esc>Ol +
"imap <Esc>Om -
"imap <Esc>On ,
"imap <Esc>Op 0
"imap <Esc>Oq 1
"imap <Esc>Or 2
"imap <Esc>Os 3
"imap <Esc>Ot 4
"imap <Esc>Ou 5
"imap <Esc>Ov 6
"imap <Esc>Ow 7
"imap <Esc>Ox 8
"imap <Esc>Oy 9
"imap <Esc>Oz 0

behave xterm
set hidden
set cmdheight=2
map <F8> :Tlist<CR>      " map F2 to open next buffer
map <F2> :w<CR>
nmap <C-Down> :cnext<CR>
nmap <C-Up> :cprev<CR>
nmap <F9> :make<CR>
set foldmethod=marker

so $HOME/.vim/project.vim

set lcs=tab:^-,trail:-
nmap <F6> :set invlist<CR>
nmap <F4> :BufExplorer<CR>
nmap <C-Enter> :cs f s <C-R><C-W><CR>
nmap <C-rightmouse> <C-t>
set cmdheight=2
set expandtab
set cscopequickfix=s-,g-,d-,c-,t-,e-,i-
set nowrap
au BufEnter *.[ch] setlocal cin

"pylint plugin
au FileType python compiler pylint
let g:pylint_onwrite = 0

let Tlist_Show_One_File = 1


function! Updatedb()
    exe "!/home/wliang/bin/updatecodedb"
    cs reset
endfunc
nmap <F12> :call Updatedb()<CR>


nmap <M-Right> <C-W>l
nmap <M-Left> <C-W>h
nmap <M-Up> <C-W>k
nmap <M-Down> <C-W>j
let mapleader = ","
nmap <F7> :Amarks<CR>

let g:pyflakes_use_quickfix = 0
