"Loading bundles
source ~/.vim/bundles.vim

""""""""""""""""""""""""""""""""""""""""""""""""
" General config
""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme typofree-modified
set t_Co=256

" change the default EasyMotion shading to something more readable with Solarized
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

"Make the completion menus readable
highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7
set virtualedit=onemore " allow for cursor beyond last character
set tabpagemax=15       " only show 15 tabs
set showmode            " display the current mode
set showmatch           " show matching brackets/parenthesis
set cursorline          " highlight current line
set cursorcolumn        " cursor collumn
hi cursorline guibg=#333333     " highlight bg color of current line
hi cursorcolumn guibg=#333333   " highlight cursor

if has('statusline')
set laststatus=2
                " Broken down into easily includeable segments
                set statusline=%<%f\    " Filename
                set statusline+=%w%h%m%r " Options
"                set statusline+=%{fugitive#statusline()} "  Git Hotness
                set statusline+=\ [%{&ff}/%Y]            " filetype
                set statusline+=\ [%{getcwd()}]          " current dir
                "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
                set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set title
set showmatch                                   " show matching brackets/parenthesis

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
set softtabstop=4
set shiftwidth=4        " indent width for autoindent
set shiftround
set expandtab           " turn tabs into whitespace
set nojoinspaces
" set space to toggle a fold
"nnoremap <space> za
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use


"Always show cursor position
set ruler
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

"let python_highlight_all=1

set ofu=syntaxcomplete#Complete

syntax on

if &diff
    "I'm only interested in diff colours
    syntax off
endif

"syntax highlight shell scripts as per POSIX,
"not the original Bourne shell which very few use
let g:is_posix = 1

" Highlighting: Setup some nice colours to show the mark positions.
hi default ShowMarksHLl ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLu ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLo ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLm ctermfg=253 ctermbg=None cterm=bold

""""""""""""""""""""""""""""""""""""""""""""""""
" Indenting
""""""""""""""""""""""""""""""""""""""""""""""""

"Default to autoindenting of C like languages
"This is overridden per filetype below
set noautoindent smartindent
augroup sh
    au!
    "smart indent really only for C like languages
    au FileType sh set nosmartindent autoindent
augroup END

"augroup Python ... not used for the moment
"    "See $VIMRUNTIME/ftplugin/python.vim
"    au!
"    "smart indent really only for C like languages
"    "See $VIMRUNTIME/indent/python.vim
"    au FileType python set nosmartindent autoindent
"    " Allow gf command to open files in $PYTHONPATH
"    au FileType python let &path = &path . "," . substitute($PYTHONPATH, ';', ',', 'g')
"    if v:version >= 700
"        "See $VIMRUNTIME/autoload/pythoncomplete.vim
"        "<C-x><C-o> to autocomplete
"        au FileType python set omnifunc=pythoncomplete#Complete
"        "Don't show docs in preview window
"        au FileType python set completeopt-=preview
"    endif
"augroup END

"The rest deal with whitespace handling and
"mainly make sure hardtabs are never entered
"as their interpretation is too non standard in my experience
" Note if you don't set expandtab, vi will automatically merge
" runs of more than tabstop spaces into hardtabs. Clever but
" not what I usually want.


""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""
"This is necessary to allow pasting from outside vim. It turns off auto stuff.
"You can tell you are in paste mode when the ruler is not visible
set pastetoggle=<F2>

"Note <leader> is the user modifier key (like g is the vim modifier key)
let mapleader = ","

",n to turn off search highlighting
" ,l       : list buffers
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
nmap <silent> <leader>q :q!<CR>
nmap <silent> <leader>f :FixWhitespace<CR>
nmap <silent> <leader>n :silent :nohlsearch<CR>
nmap <silent> <leader>s :w<CR>
nnoremap <F12> :set nonumber!<CR>
nnoremap <F9> :ShowMarksToggle<CR>
" Move entire line/block up and down
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv
" revision controll
noremap <F3> :call Svndiff("prev")<CR>
noremap <F4> :call Svndiff("next")<CR>
noremap <F5> :call Svndiff("clear")<CR>
" vim-scripts/buftabs
noremap <silent> <leader><left> :bprev<CR>
noremap <silent> <leader><right> :bnext<CR>
" Nerdtree & taglist
map <unique> <Leader>[ :NERDTreeToggle<CR>
map <unique> <Leader>] :TlistToggle<CR>

" Execute current python code
map <buffer> <Leader>r :!clear<cr>:w<cr>:!/usr/bin/env python % <cr>
" chmod +x on new file
map <buffer> <Leader>x :!chmod +x %<cr>

" First, enable status line always
set laststatus=2
" Informative status line
" It's useful to show the buffer number in the status line.
"set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{GitBranch()}
"set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ }

"<home> toggles between start of line and start of text
imap <khome> <home>
nmap <khome> <home>
inoremap <silent> <home> <C-O>:call Home()<CR>
nnoremap <silent> <home> :call Home()<CR>
function Home()
    let curcol = wincol()
    normal ^
    let newcol = wincol()
    if newcol == curcol
        normal 0
    endif
endfunction

"<end> goes to end of screen before end of line
imap <kend> <end>
nmap <kend> <end>
inoremap <silent> <end> <C-O>:call End()<CR>
nnoremap <silent> <end> :call End()<CR>
function End()
    let curcol = wincol()
    normal g$
    let newcol = wincol()
    if newcol == curcol
        normal $
    endif
    "The following is to work around issue for insert mode only.
    "normal g$ doesn't go to pos after last char when appropriate.
    "More details and patch here:
    "http://www.pixelbeat.org/patches/vim-7.0023-eol.diff
    if virtcol(".") == virtcol("$") - 1
        normal $
    endif
endfunction

set number " Turn on line numbers


""""""""""""""""""""""""""""""""""""""""""""""""
" file type handling
""""""""""""""""""""""""""""""""""""""""""""""""

" To create new file securely do: vim new.file.txt.gpg
" Your private key used to decrypt the text before viewing should
" be protected by a passphrase. Alternatively one could use
" a passphrase directly with symmetric encryption in the gpg commands below.
au BufNewFile,BufReadPre *.gpg :set secure viminfo= noswapfile nobackup nowritebackup history=0 binary
au BufReadPost *.gpg :%!gpg -d 2>/dev/null
au BufWritePre *.gpg :%!gpg -e -r 'ionut.cadariu@gmail.com' 2>/dev/null
au BufWritePost *.gpg u

filetype on
filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""
" Other settings
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove trailing whitespaces and ^M chars
"autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


if exists(":let")
    " Make sure NERDTree always opens with the right dimensions
    let NERDTreeQuitOnOpen = 1
    let NERDTreeWinSize = 30
endif

" Save folding status automatically
if has("autocmd")
    autocmd BufWinLeave ?* silent mkview
    autocmd BufWinEnter ?* silent loadview
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
hi pythonOperator guifg=#f07746 ctermfg=209 gui=none
