syntax enable

colorscheme desert

"Space & Tabs
set tabstop=4
set softtabstop=4 	" number of spaces in tab when editing
set expandtab 		" tabs are spaces

"UI config
set number 		" show line numbers
set showcmd 		" show command in bottom bar
set cursorline 		" highlight current line
filetype indent on	" language specific indent file
set wildmenu		" visual autocomplete for command menu
set lazyredraw		" redraw only when we do
set showmatch 		" highlight matching brackets & co

"Searching
set incsearch 		" start searching as typing
set hlsearch		" highlight matches*

"Movement
nnoremap j gj		" Move vertically by visual line
nnoremap k gk
nnoremap gV `[v`]	" Highlight last block of character


"Tmux
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"StripTrailing
function! <SID>StripTrailingWhitespaces()
 let _s=@/
 let l = line(".")
 let c = col(".")
 %s/\s\+$//e
 let @/=_s
 call cursor(l, c)
endfunction


set timeoutlen=1000
set ttimeoutlen=0
"TODO
" sudo write

