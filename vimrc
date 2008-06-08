"http://www.vi-improved.org/_vimrc

set nocompatible
"set guifont=Liberation_Mono:h10:cDEFAULT
"set guifont=Monaco:h13cDEFAULT
set guifont=Inconsolata:h13cDEFAULT

"Remove Toolbar
set guioptions-=T
"Remove Menu
"set guioptions-=m


set ffs=unix,mac,dos " Support filetypes

set noantialias
set tags=~/lifttags


filetype on
filetype plugin on

set backupdir=~/tmp
set directory=~/tmp

if has ("gui_running")
  colorscheme vibrantink
  "colorscheme 256-jungle 
  "colorscheme darktango
  "colorscheme two2tango
  "colorscheme rastafari
  set cursorline
else
  colorscheme evening
end


"Twitter Login
let twitvim_login="u:p"

set nocompatible    " use vim defaults
set ls=2            " always show status line
set tabstop=2       " numbers of spaces of tab character
set shiftwidth=2    " numbers of spaces to (auto)indent
set softtabstop=2   " aa
set scrolloff=10    " keep 5 lines when scrolling
set cindent         " cindent
set smartindent     " smart indent
set autoindent      " always set autoindenting on
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ignorecase      " ignore case
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching
set title           " show title in console title bar
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=2     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files

set lz "Lazy Redraw
set cmdheight=1 "Command Height = 2 lines

set autowrite      " auto saves changes when quitting and swiching buffer
set expandtab      " tabs are converted to spaces, use only when required
set showmatch             " show matching braces, somewhat annoying...
set scs 

set novisualbell "no flash
set noerrorbells "no sound

syntax on           " syntax highlighing


if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber       " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>    " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>    " Backspace to go back
    au FileType mail set textwidth=72
    au FileType tex set textwidth=72

    " File formats
    au BufNewFile,BufRead   *.pls   set syntax=dosini
    au BufNewFile,BufRead   modprobe.conf   set syntax=modconf
endif

" Keyboard mappings
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file



" ShiftWidth
set shiftwidth=2
set tabstop=2
set softtabstop=2

set backup
set vb t_vb=

"set t_kb=^?
"set t_kD=^H
"set backspace=indent,eol,indent



" Fix for Backspace on Windows
set bs=2


set foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\|\|(getline(v:lnum+1)=~@/)?1:2
map \z :set foldmethod=expr foldlevel=0 foldcolumn=2<CR> 

"set statusline=%F%m%r%h%w\ [FOR=%{&ff}]\ [Type=%Y]
set statusline=[%F%m%r%h%w\ [FOR=%{&ff}]\ [Type=%Y]


if has('statusline')
    " Status line detail:
    " %f		file path
    " %y		file type between braces (if defined)
    " %([%R%M]%)	read-only, modified and modifiable flags between braces
    " %{'!'[&ff=='default_file_format']}
    "			shows a '!' if the file format is not the platform
    "			default
    " %{'$'[!&list]}	shows a '*' if in list mode
    " %{'~'[&pm=='']}	shows a '~' if in patchmode
    " (%{synIDattr(synID(line('.'),col('.'),0),'name')})
    "			only for debug : display the current syntax item name
    " %=		right-align following items
    " #%n		buffer number
    " %l/%L,%c%V	line number, total number of lines, and column number
    function SetStatusLineStyle()
	if &stl == '' || &stl =~ 'synID'
	    let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%{'~'[&pm=='']}%=#%n %l/%L,%c%V "
	else
	    let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]} (%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c%V "
	endif
    endfunc
    " Switch between the normal and vim-debug modes in the status line
    nmap _ds :call SetStatusLineStyle()<CR>
    call SetStatusLineStyle()
    " Window title
    if has('title')
	set titlestring=%t%(\ [%R%M]%)
    endif
endif



autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete

au BufRead, BufNewFile COMMIT_EDITMSG setf git

noremap <silent> <F11> :cal VimCommanderToggle()<CR>

augroup my-project-X
  au!
  autocmd BufNewFile,BufRead    *C:\Documents and Settings\tweir\src\_sandbox*       lcd <directory-containing-pom>
  autocmd BufNewFile,BufRead    *C:\Documents and Settings\tweir\src\_sandbox*       compiler maven2
augroup END 


if has("gui_running")
  set lines=64
  set columns=120
endif


" * Terminal Settings

" `XTerm', `RXVT', `Gnome Terminal', and `Konsole' all claim to be "xterm";
" `KVT' claims to be "xterm-color":
if &term =~ 'xterm'

  " `Gnome Terminal' fortunately sets $COLORTERM; it needs <BkSpc> and <Del>
  " fixing, and it has a bug which causes spurious "c"s to appear, which can be
  " fixed by unsetting t_RV:
  if $COLORTERM == 'gnome-terminal'
    execute 'set t_kb=' . nr2char(8)
    " [Char 8 is <Ctrl>+H.]
    fixdel
    set t_RV=

  " `XTerm', `Konsole', and `KVT' all also need <BkSpc> and <Del> fixing;
  " there's no easy way of distinguishing these terminals from other things
  " that claim to be "xterm", but `RXVT' sets $COLORTERM to "rxvt" and these
  " don't:
  elseif $COLORTERM == ''
    execute 'set t_kb=' . nr2char(8)
    fixdel

  " The above won't work if an `XTerm' or `KVT' is started from within a `Gnome
  " Terminal' or an `RXVT': the $COLORTERM setting will propagate; it's always
  " OK with `Konsole' which explicitly sets $COLORTERM to "".

  endif
endif


"CTags
"----------------------------
if has("gui_running") 
  let Tlist_Ctags_Cmd=/usr/local/bin/ctags
  let Tlist_Sort_Type="name"
end




