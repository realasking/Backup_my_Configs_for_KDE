set ghr=0
if has("gui_running")
	  " GUI is running or is about to start.
	    " Maximize gvim window.
	      set lines=999 columns=999 
endif 
set nu
let &termencoding=&encoding
set fileencodings=utf-8,gb18030

set nohlsearch
set tabstop=6
set shiftwidth=6
set autoindent shiftwidth=6
set bs=2

"let mysyntaxfile = "$HOME/.vim/lexcol.vim"
"filetype on
if has("autocmd") && exists("+omnifunc")
     autocmd Filetype *
   \ if &omnifunc == "" |
   \   setlocal omnifunc=syntaxcomplete#Complete |
   \ endif
endif
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4 
"syntax enable
syntax on
set list
set listchars=tab:\|\

if &term != "cygwin"                                                                                             
set ruler                                                                                                            
else                                                                                                          
set noruler                                                                                                     
endif

if &term =="fbterm"
set t_Co=256 
colo desertEx
endif

