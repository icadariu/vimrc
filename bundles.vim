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
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'puppetlabs/puppet-syntax-vim'
"Bundle 'moll/vim-node'
"Bundle 'pangloss/vim-javascript'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'vim-scripts/iptables'
"Bundle 'saltstack/salt-vim'
"Bundle 'sjl/gundo.vim'
"Bundle 'klen/python-mode'
"Bundle 'kien/tabman.vim'
Bundle 'tpope/vim-commentary'
Bundle 'Raimondi/delimitMate'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'tomtom/tlib_vim.git'
Bundle 'garbas/vim-snipmate.git'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/SearchComplete'
Bundle 'pearofducks/ansible-vim'
Bundle 'vim-scripts/trailing-whitespace'
Bundle 'hashivim/vim-terraform'
Bundle 'hashivim/vim-vagrant'
Bundle 'hashivim/vim-packer'
Bundle 'hashivim/vim-vaultproject'
Bundle 'chr4/nginx.vim'

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
