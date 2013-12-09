" General {
	set bg=dark
	set nu
	syntax on
	
	filetype plugin indent on
	filetype on
	filetype off

	set backspace=indent,eol,start
	set smartindent
	set autoindent
	set history=200
	
	setlocal tabstop=4    
	setlocal shiftwidth=4
	setlocal expandtab
	setlocal autoindent
	setlocal smarttab

	set foldmethod=marker
	set foldmethod=manual
	set guifont=:h20

	set t_Co=256
" }

" NERTDTREE config {
	autocmd VimEnter * NERDTree
	nnoremap <silent> <F5> :NERDTree<CR>
    let NERDTreeShowHidden=1
    let NERDTreeShowLineNumbers=1
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
	Bundle 'tpope/vim-surround'
    Bundle "pangloss/vim-javascript"
" }
