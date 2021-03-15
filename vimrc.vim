set nocompatible           

" solarized colorscheme options
set background=dark
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized

" main options
syntax on
set showmatch ic

set history=10000       " Remember this many commands
set number              " Display line numbers
set numberwidth=4       " Minimum number of columns to show for line numbers
set ruler               " Always show the cursor position
set showmode            " Always show the mode
set showcmd             " Display incomplete commands
set incsearch           " Do incremental searching (as you type)
set hlsearch            " Highlight the latest search pattern
set laststatus=2        " Always show a status line

set shiftwidth=2  	  	" indents of x spaces
set expandtab		  	    " tabs are spaces, not tabs
set tabstop=2		      	" an indentation every x columns
set softtabstop=2	 	    " let backspace delete indent
set shiftround          " Round indent to a multiple of 'shiftwidth'.

set autoindent          " Copy indent from current line for new line
set nosmartindent       " manually control indentation 
set complete-=i
set smarttab            " Tab respects 'shiftwidth', 'tabstop', 'softtabstop'.
set pastetoggle=<F12>		" pasttoggle (sane indentation on pastes)

set wildmode=list:longest,full
set wildmenu

" Care about case only if I use an uppercase letter
set ignorecase
set smartcase

" Act more 'normal' about backspacing
" e.g. to backspace past start of edit
set backspace=indent,eol,start

set splitright          " Split new vertical windows right of current window
set winminheight=0      " Allow windows to shrink to status line.
set winminwidth=0       " Allow windows to shrink to vertical separator.
set lbr                 " Wrap line on word boundaries
set wrap

" Update the swap file every 20 characters. I don't like to lose stuff.
set updatecount=20

"clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR> 

" exit out of insert mode by pressing 'jk' in quick succession
inoremap jk <esc> 

