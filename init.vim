" { Competitive shit
" C++ compile variations:
	" Default
	noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DLPZ -O2 -o %< % && ./%< < inp<CR>
	inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DLPZ -O2 -o %< % && ./%< < inp<CR>
	" With params
	noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DLPZ -O2 -o %< % && ./%< <CR>
	inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DLPZ -O2 -o %< % && ./%< <CR>
	" File input
	noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DLPZ -O2 -o %< % && ./%< < inp<CR>
	noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DLPZ -O2 -o %< % && ./%< < inp<CR>
" }     

" { Basic config 

" { Plugins
call plug#begin('~/.vim/plugged')

" Plugins for snippets:
	Plug 'sirver/ultisnips'
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

	Plug 'honza/vim-snippets'
" Haskell plugin: 
	Plug 'neovimhaskell/haskell-vim'

" Rust plugin:
	Plug 'rust-lang/rust.vim'
" Latex plugin (isn't configure yet): 
 	Plug 'lervag/vimtex'
call plug#end()
" :PlugInstall 

"}

" Visual & working aesthetics: 

	" Default encoding
	set encoding=utf-8
	" Enable numbers
	set number
	" Modifying split settings
	set splitbelow splitright
	"Enabling auto completion menu after pressing TAB
	set wildmenu
	" Show what mode currently editing in
	set showmode
	" Highlights searched text
	set hlsearch
	" Show search matches as you type
	set incsearch
	"
	set ignorecase
	" For consistency
	set smarttab
	" Enables searching with capital letters when specified
	set smartcase
	" Enabling 'Show matching' words while searching 
	set showmatch
	" Disabling beeping
	set vb t_vb=

	filetype on
	filetype plugin on
	filetype indent on
	autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
	autocmd FileType haskell setlocal makeprg=ghci\ %

	syntax on

	set shiftwidth=4
	set tabstop=4
	set iskeyword+=:

"  neovimhaskell/haskell-vim modifying:
	let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
	let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
	let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
	let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
	let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
	let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
	let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" { Hotkeys & Keybindings
" Just more convenient for me
noremap <TAB> %
"Sourcing neovim config
nnoremap<leader>r :source ~/.config/nvim/init.vim<cr>
" }

" { Scripts
augroup c_formatting
	autocmd!
	autocmd FileType c,cpp syn keyword cFunctions printf scanf
	autocmd FileType c,cpp hi link cFunctions Function
augroup END
" }

" }

