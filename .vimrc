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
set backspace=indent,eol,start
"set viminfo='20,<50,s10,h

set autoindent     " always set autoindenting on
set diffopt+=vertical
set nobomb
set foldmethod=marker
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
colorscheme ron    " use this color scheme
set background=dark        " adapt colors for background

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex setlocal textwidth=72
    au FileType cpp,c,java,sh,pl,php,asp  setlocal autoindent
    au FileType cpp,c,java,sh,pl,php,asp  setlocal smartindent
    au FileType cpp,c,java,sh,pl,php,asp  setlocal cindent
    au FileType markdown setlocal foldmethod=indent
    au FileType markdown setlocal expandtab
    au FileType markdown setlocal tabstop=4
    au FileType markdown setlocal shiftwidth=4
    au FileType xml,html setlocal textwidth=999
    au FileType xml,html setlocal tabstop=2
    au FileType xml,html setlocal shiftwidth=2
    au FileType xml,html setlocal expandtab
    "au BufRead mutt*[0-9] set tw=72
    
    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
endif

com! CD cd %:p:h
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

iab pdb import pdb; pdb.set_trace()
iab ndb from nose.tools import set_trace; set_trace()
iab idb from ipdb import set_trace; set_trace()

behave xterm
set hidden
set cmdheight=2
"nnoremap <F8> :Tlist<CR>      " map F2 to open next buffer
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F2> :w<CR>
nmap <C-Down> :cnext<CR>
nmap <C-Up> :cprev<CR>
nnoremap <F9> :make<CR>

so $HOME/.vim/project.vim

set lcs=tab:^-,trail:-
nnoremap <F6> :set invlist<CR>
nnoremap <F4> :BufExplorer<CR>
nmap <C-Enter> :cs f s <C-R><C-W><CR>
nmap <C-rightmouse> <C-t>
set cmdheight=2
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
"nmap <F12> :call Updatedb()<CR>


nmap <M-Right> <C-W>l
nmap <M-Left> <C-W>h
nmap <M-Up> <C-W>k
nmap <M-Down> <C-W>j
let mapleader = ","
nnoremap <F7> :Amarks<CR>

let g:pyflakes_use_quickfix = 0
call pathogen#infect()

set listchars=tab:»\ ,trail:·
let g:cssColorVimDoNotMessMyUpdatetime = 1

let g:tagbar_sort=0
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

let g:go_fmt_command="goimports"

" settings for syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
