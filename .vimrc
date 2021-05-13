set nocompatible            " Disable vi compatibility
filetype on                 " filetype must be 'on' before setting it 'off'
                            " otherwise it exits with a bad status and breaks
filetype off                " force reloading *after* pathogen loaded

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'tomtom/tlib_vim.git'
Plugin 'garbas/vim-snipmate.git'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/SearchComplete'
Plugin 'pearofducks/ansible-vim'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'hashivim/vim-terraform'
Plugin 'hashivim/vim-vagrant'
Plugin 'hashivim/vim-packer'
Plugin 'hashivim/vim-vaultproject'
Plugin 'chr4/nginx.vim'
Plugin 'Yggdroot/indentLine'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"https://github.com/Yggdroot/indentLine
"let g:indentLine_setColors = 0
let g:indentLine_color_tty_light = 4 " (default: 4)

""""""""""""""""""""""""""""""""""""""""""""""""
" General config
""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme typofree-modified

"""""""""""""""""""""""""""""""""""""
" Different set calls
"""""""""""""""""""""""""""""""""""""
"Default to autoindenting of C like languages
"This is overridden per filetype below
set ofu=syntaxcomplete#Complete
set noautoindent smartindent
set laststatus=2
set number " Turn on line numbers
set background=dark
set t_Co=256
set virtualedit=onemore " allow for cursor beyond last character
set tabpagemax=15       " only show 15 tabs
set showmode            " display the current mode
set showmatch           " show matching brackets/parenthesis
set cursorline          " highlight current line
set cursorcolumn        " cursor column
" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set title
set showmatch                                   " show matching brackets/parenthesis
"fix windows line endings issue
set ff=unix
"allow backspacing over everything in insert mode
set bs=2
set viminfo='1000,f1,<500 "read/write a .viminfo file, don't store more
set history=200          " keep 200 lines of command line history
set nowrap
set ignorecase
set smartcase
set incsearch " ...dynamically as they are typed
set hlsearch                                    " highlight search terms
" buffer handling
set hidden
set wildchar=<Tab> wildmenu wildmode=full
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
" Turn on smart indent
set smartindent         " it may brake Eric Mc Sween's indent fix
set softtabstop=2
set shiftwidth=2        " indent width for autoindent
set shiftround
set expandtab           " turn tabs into white space
set nojoinspaces
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "don't fold by default
set foldlevel=1         "this is just what i use
"Always show cursor position
set ruler
"""""""""""""""""""""""""""""""""""""

" change the default EasyMotion shading to something more readable with Solarized
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

"Make the completion menus readable
highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7
hi cursorline guibg=#333333     " highlight bg color of current line
hi cursorcolumn guibg=#333333   " highlight cursor

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

if &diff
  "I'm only interested in diff colors
  syntax off
endif

"syntax highlight shell scripts as per POSIX,
"not the original Bourne shell which very few use
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
let mapleader = ","
",n to turn off search highlighting
" ,l       : list buffers
"This is necessary to allow pasting from outside vim. It turns off auto stuff.
"You can tell you are in paste mode when the ruler is not visible
set pastetoggle=<F2>

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>l :buffers<CR>:buffer<Space>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>g :e#<CR>
" other vim shortcuts
nmap <silent> <leader>u :GundoToggle<CR>
nmap <silent> <leader>q :q!<CR>
nmap <silent> <leader>f :FixWhitespace<CR>
nmap <silent> <leader>n :silent :nohlsearch<CR>
nmap <silent> <leader>s :w<CR>
",c -> pyflakes quick commands like quick fix (,cc)
nnoremap <F12> :set nonumber!<CR>
" Move entire line/block up and down
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv
"chmod +x on new file
map <buffer> <Leader>x :!chmod +x %<cr>

""""""""""""""""""""""""""""""""""""""""""""""""
"file type handling
""""""""""""""""""""""""""""""""""""""""""""""""

" To create new file securely do: vim new.file.txt.gpg
" Your private key used to decrypt the text before viewing should
" be protected by a passphrase. Alternatively one could use
" a passphrase directly with symmetric encryption in the gpg commands below.
au BufNewFile,BufReadPre *.gpg :set secure viminfo= noswapfile nobackup nowritebackup history=0 binary
au BufReadPost *.gpg :%!gpg -d 2>/dev/null
au BufWritePre *.gpg :%!gpg -e -r 'email@example.com' 2>/dev/null
au BufWritePost *.gpg u

""""""""""""""""""""""""""""""""""""""""""""""""
" Other settings
""""""""""""""""""""""""""""""""""""""""""""""""

" Save folding status automatically
if has("autocmd")
  autocmd BufWinLeave ?* silent mkview
  autocmd BufWinEnter ?* silent loadview
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufNewFile,BufRead *.ansible  set syntax=ansible

hi pythonOperator guifg=#f07746 ctermfg=209 gui=none

set t_Co=256                " 256 colors terminal
"Terraform settings
let g:terraform_align=1
let g:terraform_fmt_on_save=1
autocmd FileType terraform setlocal commentstring=#%s
" spell stuff
"set spellfile=~/.vim/spell/spell-words.utf-8.add
set spell spelllang=en_us spell
set spellsuggest=fast,20 "Don't show too much suggestion for spell check.
set spellfile=~/.vim/en.utf-8.add
autocmd FileType markdown setlocal spell
autocmd Filetype gitcommit setlocal spell textwidth=72

" set different version of snipmate parser (1)
let g:snipMate = { 'snippet_version' : 1 }

" set filetype ansible - https://github.com/pearofducks/ansible-vim
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
"autocmd BufRead,BufNewFile *.md set filetype=markdown
" Spell-check Markdown files
" Autocogmplete with dictionary words when spell check is on
set nospell
" Shortcuts
" Spellcheck shortcuts - http://vimdoc.sourceforge.net/htmldoc/spell.html
"z= -> will suggest correctly spelled words
"[s or ]s  -> move to the next misspelled word
"zg or zG -> add word to the spellfile list
" redraw screen -> Ctrl + l
"set mmp=5000  -> if issue with maxmempattern
"set list -> will display tab chars in your file
"set expandtab -> insert spaces instead of tab
":retab -> change all existing tabs
":set shiftwidth=2 -> change nr of spaces inserted
