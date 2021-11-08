set viminfo+=n~/.vim/viminfo
 
" General
syntax on 
:set laststatus=2
:set encoding=utf-8
:set fileencoding=utf-8
:set fileencodings=utf-8
:set ttyfast
:set title
:set wildmenu
:set nostartofline
:set shortmess=atI
:set history=1000
:set lazyredraw
:set noshowmatch
:set belloff=all
:set mouse=
:set ttymouse=

" Wrapping and Line Breaks
:set wrap
:set linebreak
:set nolist  
:set scrolloff=13

" Shifting
:set shiftround
:set autoindent
:set smartindent 
:set cpoptions  +=I

" Number Stuff
:set number 
:set relativenumber

" Search
:set showmatch
:set hlsearch
:set ic

" Visual Mode 
:vnoremap <c-v> <c-q>" Tab

" Tab Tab Tab
:set tabstop=2 softtabstop=0 noexpandtab shiftwidth=2 smarttab
" Useful Visual Tab
:vnoremap <tab> >vgv
:vnoremap <s-tab> <vgv

" Make hjkl Graphical
:nnoremap j gj
:nnoremap k gk
:vnoremap j gj
:vnoremap k gk

" 'd' Deletes, Doesn't Cut
:nnoremap d "_d
:vnoremap d "_d

" Split Nav
:nnoremap <c-j> <C-W><C-J>
:nnoremap <c-k> <C-W><C-K>
:nnoremap <c-l> <C-W><C-L>
:nnoremap <c-h> <C-W><C-H>

" Removing h and l, for... (trying this out)
:nnoremap h b
:nnoremap l w

