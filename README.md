Installation
============

For auto install just download auto-install.sh and make sure you have git installed.

To manual install, follow this steppes:

    mv ~/.vim ~/.vim.old && mv ~/.vimrc ~/vimrc.old
    git clone git://github.com/never2far/vimrc.git ~/.vim
    mkdir -p ~/.vim/bundle/ && git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    vim -u ~/.vim/bundles.vim +BundleInstall +q

    ln -s ~/.vim/.vimrc ~/.vimrc
    export TERM="xterm-256color"


### Plugins

* [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
* [Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
* [scrooloose/nerdcommenter](http://github.com/scrooloose/nerdcommenter)
* [ervandew/supertab](https://github.com/ervandew/supertab)
* [vim-scripts/SearchComplete](https://github.com/vim-scripts/SearchComplete)
* [never2far/snipmate.vim](https://github.com/never2far/snipmate.vim)
* [tpope/vim-fugitive](http://github.com/tpope/vim-fugitive)

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
