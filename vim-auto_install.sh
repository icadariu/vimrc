#!/bin/bash
# Description: It will automatically install vim plugins and make the necessary symbolic link.
# http://j.mp/1g7il5x   -> short link to autoinstall-script

# backup current vim if exists

[ -d ~/.vim ] && mv ~/.vim ~/.vim.old
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.old

# check if git is installed
# &> /dev/null -> This is just an abbreviation for >/dev/null 2>&1. It redirects file descriptor 2 (STDERR) and descriptor 1 (STDOUT) to /dev/null.

which git &> /dev/null
[ $? -eq 1 ] && echo "git is not installed..." && exit 1
which vim &> /dev/null
[ $? -eq 1 ] && echo "Install vim first" && exit 1

git clone https://github.com/icadariu/vimrc.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
[ ! -h ~/.vimrc ] && ln -s ~/.vim/.vimrc ~/.vimrc

# configuring all plugins
vim +PluginInstall +qall
