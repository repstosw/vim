" Load Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set history=700

colorscheme banks
filetype plugin on
filetype indent on

set autoread
set guioptions=aegimt
set guifont=Ubuntu\ Mono\ 11

set scrolloff=15
set wildmenu
set wildignore=*.o,*~,*.pyc

set ruler
set cmdheight=2
set hid
set relativenumber
set cursorline

set backspace=eol,start,indent
set whichwrap+=<,>,h

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set wrap

" set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd BufNewFile,BufRead *.wsgi set filetype=python
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
map <F7> :w<CR>:!python % <CR>
map <F10> :shell <CR>

noremap <F4> :set hlsearch! hlsearch?<CR>

" map window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


imap jj <Esc>

set statusline=\ %n\ -\ %f\ %m%r%=[%l/%L,%c]\ \ %p\%%

