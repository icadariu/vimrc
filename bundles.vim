set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required!
Bundle 'gmarik/vundle'

" repos on github
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/SearchComplete'
Bundle 'vim-scripts/trailing-whitespace'
Bundle 'tomtom/tlib_vim.git'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'garbas/vim-snipmate.git'
Bundle 'tpope/vim-fugitive'
Bundle 'saltstack/salt-vim'
Bundle 'sjl/gundo.vim'
Bundle 'kien/tabman.vim'
Bundle 'klen/python-mode'
Bundle 'puppetlabs/puppet-syntax-vim'

"Bundle 'icadariu/snipmate.vim'
"Bundle 'Lokaltog/vim-powerline'
" commented
"Bundle 'motemen/git-vim'
"Bundle 'vim-scripts/ShowMarks'
"Bundle 'kevinw/pyflakes-vim'
"Bundle 'scrooloose/syntastic'
"Bundle 'scrooloose/nerdtree.git'
"Bundle 'klen/python-mode'
"Bundle 'vim-scripts/taglist.vim'
"Bundle 'L9'
"Bundle 'vim-scripts/buftabs'
"Bundle 'cschlueter/vim-wombat'
"Bundle 'vim-scripts/svndiff'
"Bundle 'tomtom/checksyntax_vim'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'wincent/Command-T'
"Bundle 'vim-scripts/typofree.vim'
"Bundle 'skyl/vim-config-python-ide'
"Bundle 'vim-scripts/FuzzyFinder'
"Bundle 'mhz/vim-matchit'
"Bundle 'tpope/vim-surround'
"Bundle 'msanders/snipmate.vim'
"Bundle 'scrooloose/snipmate-snippets'
"Bundle 'vim-scripts/UltiSnips'
"Bundle 'gmarik/vim-markdown'
"Bundle 'vim-scripts/HTML-AutoCloseTag'
"Bundle 'skammer/vim-css-color'
"Bundle 'robhudson/snipmate_for_django'
"Bundle 'mhz/html5.vim'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} "Sparkup lets you write HTML code faster

filetype plugin indent on     " required!
" :BundleInstall  - install bundles (won't update installed)
" :BundleInstall! - update if installed
"
" :Bundles foo    - search for foo
" :Bundles! foo   - refresh cached list and search for foo
"
" :BundleClean    - confirm removal of unused bundles
" :BundleClean!   - remove without confirmation
"
" see :h vundle for more details
" or wiki for FAQ
" Note: comments after Bundle command are not allowed..
