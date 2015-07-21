" ========================= Normal Setting Start =========================

"Set windows pos and resize
set lines=42
set columns=118

" ## Make its Gvim Like Windows behave ##
" So you can use
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
"behave mswin

" Format
set nu
set noexpandtab
set copyindent
set preserveindent
set tabstop=2 "4
set shiftwidth=2 "4
set softtabstop=0 "4
set autowrite
set display=lastline

" Encoding setting
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=utf-8

" For indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set fileignorecase
set showcmd
set whichwrap+=<,>,h,l

" Omni Complete Setting
set wildmenu
set wildmode=longest,full
set completeopt=menu,menuone,longest
set completeopt-=preview
set switchbuf=useopen,usetab
set shortmess=a

" No back up files
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set noshowmode
set ruler
set cursorline
set winaltkeys=no

" Advance config
set magic
set lazyredraw
set ttyfast
set hidden
"set autochdir
set autoread
"set showmatch
set laststatus=2
set cmdheight=1

" No surround sound
set noerrorbells
set novisualbell
set t_vb=

" Set Fold config
" set foldmethod=syntax
set foldenable

" misc settings
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac

" set Undo file
set undofile
set undodir=~/.vim/undo
set viminfo+=!

" Diff GUI Vim with NVim
" Set No Top Menu and Scroll
if has("gui_running")
	set guioptions-=e
	set guioptions-=m
	set guioptions-=T
	set guioptions-=L
	set guioptions-=r
	set guioptions-=B
	set guioptions-=0
	set go=
	set guitablabel=
	set paste
	set mousemodel=popup_setpos
	set mouse-=a
	"set guitablabel=%M\ %t

	" Fonts Settings
	"set guifont=ProfontWindows\ 9
	"set guifont=IBM\ 3270\ Narrow\ Medium\ 10
	set guifont=Aix\ 9

	map <silent> <F1> :if &guioptions =~# 'T' <Bar>
				\set guioptions-=T <Bar>
				\set guioptions-=m <bar>
				\else <Bar>
				\set guioptions+=T <Bar>
				\set guioptions+=m <Bar>
				\endif<CR>
else
	set t_Co=256
	set showtabline=2
	set noimd
	set ttimeoutlen=0
endif

if len($TMUX) > 0
	" set screen title to vim $PWD folder name - format 'v:folder'
	set titlestring=v:%(%{fnamemodify(expand(\"$PWD\"),\":t\")}%)
	set t_ts=k
	set t_fs=\
	set title
endif

set spelllang=en_us                      " spelling options
set spellfile=~/.vim/spell/en.utf-8.add  " spell files added with `zg`
set dictionary+=/usr/share/dict/words

" setting the tabs like that
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 
"set list listchars=tab:-\ ,trail:\ 
set list listchars=tab:-\ ,extends:>,precedes:<

" ========================= Normal Setting End =========================