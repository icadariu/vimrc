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

[ ! -h ~/.vimrc ] && ln -s ~/.vim/.vimrc ~/.vimrc
