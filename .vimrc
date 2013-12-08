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

	set t_Co=256
" }
" Always use UTF-8 encoding {
	set fileencoding=utf-8
	set encoding=utf8
	set tenc=utf8
" }

" vundle {
	set rtp+=~/.vim/bundle/vundle
	" in windows , suggest put .vim on $HOME/.vim/bundle/vundle
	" set rtp+=$HOME/.vim/bundle/vundle
	call vundle#rc()
" }

" Budle with Vundle {
	" github上的用户写的插件，使用这种用户名+repo名称的方式
	Bundle 'scrooloose/nerdtree'
	Bundle 'jistr/vim-nerdtree-tabs'
	Bundle 'gmarik/vundle'
" }
