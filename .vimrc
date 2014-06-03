" vundle setup
"
	set nocompatible
	filetype off

	set rtp=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" let vundle manage vundle
	" required!
	Plugin 'gmarik/Vundle.vim'

	Bundle 'scrooloose/nerdcommenter.git'
	Bundle 'scrooloose/syntastic'
	Bundle 'bling/vim-airline'
	Bundle 'tpope/vim-fugitive'

" reset vim augroup
"
	" commands are added to this group later on, reset the contents.
	augroup vimrc
	  autocmd!
	augroup END

" auto commands
"
	" resize splits on windows resize
	au VimResized * exe "normal! \<c-w>="

	" highlight current line vertically
	au WinLeave * set nocursorline nocursorcolumn
	au WinEnter * set cursorline cursorcolumn

" general
"
	source ~\.vim\.vsvimrc

	set background=dark
	colorscheme molokai 

	set colorcolumn=80
	set cursorline cursorcolumn								" vertical cursorline
	set encoding=utf-8
	set guifont=Inconsolata-dz_for_Powerline:h11
	set guioptions-=T										" hide toolbars scrollbars and menus in gvim
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	set guioptions-=m
	set guioptions-=M
	set laststatus=2										" always show status line
	set nobackup
	set noshowmode											" don't show mode at the bottom
	set noswapfile
	set nowritebackup
	set novisualbell										" no screen blink
	set noerrorbells										" be quiet
	set number												" show line numbers
	set helpheight=200
	set timeoutlen=400
	set titlestring=
	set titlestring+=%f\       								" file name
	set titlestring+=%h%m%r%w  								" flags
	set titlestring+=\ >\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} 
	set wildmode=full 										"complete first full match
	set wildignore=*.dll,*.exe,*.pyc,*.pyo,*.egg,*.class
	set wildignore+=*.jpg,*.gif,*.png,*.o,*.obj,*.bak,*.rbc
	set wildignore+=Icon*,\.DS_Store,*.out,*.scssc,*.sassc
	set wildignore+=.git/*,.hg/*,.svn/*,*/swp/*,*/undo/*,.nuget/*,Gemfile.lock
	set wildmenu 											"show completion matches above command line

	let g:airline_powerline_fonts=1

" vundle wrap-up
"
	call vundle#end()
	filetype plugin indent on

" syntastic
"

	let g:syntastic_error_symbol = '✗'
	let g:syntastic_warning_symbol = '⚠'
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': ['cs'],
                     \ 'passive_filetypes': ['html, js'] }
