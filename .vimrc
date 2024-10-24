let mapleader = " "
set relativenumber      " Set relative numers
set number 		" Turn on line numbers

" Using vim-plug https://github.com/junegunn/vim-plug
call plug#begin()

" Plugin list
Plug 'ntpeters/vim-better-whitespace'

" Make sure to add new plugins before plug#end
call plug#end()

filetype plugin indent on    " required
filetype on

" Better whitespace plugin configs
"let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let b:better_whitespace_enabled = 1
let b:better_whitespace_guess = 0
""""""""""""""""""""""""""""""""""""""""""""""""
" General config
""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme typofree-modified
" new colorscheme
"colorscheme jellybeans
"set autoread

"""""""""""""""""""""""""""""""""""""
" Different set calls
"""""""""""""""""""""""""""""""""""""
"Always show cursor position
"folding settings
set background=dark
set backspace=indent,eol,start " Intuitive backspacing in insert mode
set bs=2                      " allow backspacing over everything in insert mode
set cursorcolumn              " cursor column
set cursorline                " highlight current line
set expandtab                 " turn tabs into white space
set ff=unix
set history=200               " keep 200 lines of command line history
set hlsearch                  " highlight search terms
set ignorecase
set incsearch                 " dynamically as they are typed
set laststatus=2
set nofoldenable              " don't fold by default
set nojoinspaces
set nowrap
set ruler
set shiftround
set shiftwidth=2              " indent width for autoindent
set showmatch                 " show matching brackets/parenthesis
set showmode                  " display the current mode
set smartcase
set smartindent
set smartindent               " it may brake Eric Mc Sween's indent fix
set softtabstop=2
set t_Co=256
set tabpagemax=15             " only show 15 tabs
set title                     "fix windows line endings issue
set viminfo='1000,f1,<500     "read/write a .viminfo file, don't store more
set virtualedit=onemore       " allow for cursor beyond last character
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

hi cursorline guibg=#333333     " highlight bg color of current line
hi cursorcolumn guibg=#333333   " highlight cursor

""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" syntax highlight shell scripts as per POSIX,
" not the original Bourne shell which very few use
let g:is_posix = 1

" Highlighting: Setup some nice colors to show the mark positions.
hi default ShowMarksHLl ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLu ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLo ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLm ctermfg=253 ctermbg=None cterm=bold

""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""
"Note <leader> is the user modifier key (like g is the vim modifier key)
",n to turn off search highlighting
" ,l       : list buffers
"This is necessary to allow pasting from outside vim. It turns off auto stuff.
"You can tell you are in paste mode when the ruler is not visible
set pastetoggle=<F2>

" other vim shortcuts
nmap <silent> <C-s> :w<CR>
nmap <silent> <leader>f :StripWhitespace<CR>
nmap <silent> <leader>n :silent :nohlsearch<CR>
nmap <silent> <leader>q :q!<CR>
" Insert mode - move entire line/block up and down
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
nnoremap <F12> :set nonumber!<CR>
nnoremap <Leader>l :buffers<CR>:buffer<Space>
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

""""""""""""""""""""""""""""""""""""""""""""""""
"file type handling
""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256                " 256 colors terminal
" spell stuff
"set spellfile=~/.vim/spell/spell-words.utf-8.add
set spell spelllang=en_us spell
set spellsuggest=fast,20 "Don't show too much suggestion for spell check.
set spellfile=~/.vim/en.utf-8.add
autocmd FileType markdown setlocal spell
autocmd Filetype gitcommit setlocal spell textwidth=72

" Autocogmplete with dictionary words when spell check is on
set nospell
