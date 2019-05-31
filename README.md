Installation
============

For auto install just download auto-install.sh and make sure you have git installed.

To manual install, follow this steppes:

    mv ~/.vim ~/.vim.old && mv ~/.vimrc ~/vimrc.old
    git clone git://github.com/icadariu/vimrc.git ~/.vim
    mkdir -p ~/.vim/bundle/ && git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    vim -u ~/.vim/bundles.vim +BundleInstall +q

    ln -s ~/.vim/.vimrc ~/.vimrc
    export TERM="xterm-256color"


### Current plugins

* gmarik/vundle
* pearofducks/ansible-vim
* Raimondi/delimitMate
* Lokaltog/vim-easymotion
* scrooloose/nerdcommenter
* ervandew/supertab
* vim-scripts/SearchComplete
* vim-scripts/trailing-whitespace
* vim-scripts/iptables
* tomtom/tlib_vim.git
* MarcWeber/vim-addon-mw-utils.git
* garbas/vim-snipmate.git
* tpope/vim-fugitive
* saltstack/salt-vim
* sjl/gundo.vim
* kien/tabman.vim
* klen/python-mode
* puppetlabs/puppet-syntax-vim
* moll/vim-node
* pangloss/vim-javascript
* hashivim/vim-terraform


## delimitMate

**Introduction**: This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.; besides some other related features
that should make your time in insert mode a little bit easier. Read more [vim.org/scripts](http://www.vim.org/scripts/script.php?script_id=2754)

**Usage:** Most of the features can be modified or disabled permanently, using global variables, or on a FileType basis,
using autocommands. With a couple of exceptions and limitations, this features don't brake undo, redo or history.


## vim-easymotion

**Introduction:** EasyMotion provides a much simpler way to use some motions in vim

**Usage**: <Leader><Leader>t , <Leader><Leader>gE

## nerdcommenter

**Introduction:** provides many different commenting operations and styles which are invoked via key mappings and a menu.

**Usage**: Leader + cc Comment out the current line or text selected in visual mode.

##  supertab

**Introduction:**is a plugin which allows you to perform all your insert completion (|ins-completion|) using the tab key.

**Usage**: just press tab after a non whitespace character

##  SearchComplete

**Introduction:** auto complete search words using tab

**Usage**: / part of the word + tab

## just install vimrc basic
```bash
wget -O ~/.vimrc https://bit.ly/2CngtIH
cp ~/.vimrc{,.bk}; curl -sL https://bit.ly/2CngtIH > ~/.vimrc


```
