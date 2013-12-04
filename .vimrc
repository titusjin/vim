" General {
	set bg=dark
    
	if &background == "dark"
	syntax on
	hi normal guibg=black
	endif

	syntax on
	filetype plugin indent on
	set backspace=indent,eol,start
	set shiftwidth=4
	set smartindent
	set autoindent
	set nu
	set autoindent
	set nu
	set foldmethod=marker
	:colorscheme torte

	set foldmethod=manual
	set guifont=:h20

	filetype on
	filetype off
" }
" vundle {
	set rtp+=~/.vim/bundle/vundle
	call vundle#rc()
" }
" Budle with Vundle {
	Bundle 'scrooloose/nerdtree'
" }