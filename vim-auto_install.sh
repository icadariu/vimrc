#!/bin/bash
# Description: It will automatically install vim plugins and make the necessary symbolic link.


# backup current vim if exists

[ -d ~/.vim ] && mv ~/.vim ~/.vim.old
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.old

# check if git is installed

which git > /dev/null
[ $? -eq 1 ] && echo "git is not installed..." && exit 1
which vim > /dev/null
[ $? -eq 1 ] && echo "Install vim first" && exit 1

git clone https://github.com/icadariu/vimrc.git ~/.vim

# clone vundle management plugin
mkdir -p ~/.vim/bundle/ && git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle

# install plugins from bundles.vim

vim -u ~/.vim/bundles.vim +BundleInstall +q

# not used anymore
#cd ~/.vim/bundle/pyflakes-vim/
#git submodule init
#git submodule update

# create symbolic links

[ ! -h ~/.vimrc ] && ln -s ~/.vim/.vimrc ~/.vimrc

#xterm-256color
