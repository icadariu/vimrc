set nocompatible               " be iMproved
filetype off                   " required!

let TestVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let TestVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required!
Bundle 'gmarik/vundle'

" repos on github
Bundle 'chase/vim-ansible-yaml'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/SearchComplete'
Bundle 'vim-scripts/trailing-whitespace'
Bundle 'vim-scripts/iptables'
Bundle 'tomtom/tlib_vim.git'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'garbas/vim-snipmate.git'
Bundle 'tpope/vim-fugitive'
Bundle 'saltstack/salt-vim'
Bundle 'sjl/gundo.vim'
Bundle 'kien/tabman.vim'
Bundle 'klen/python-mode'
Bundle 'puppetlabs/puppet-syntax-vim'

if TestVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall!
endif

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
