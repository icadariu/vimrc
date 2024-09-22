#!/bin/bash
# Description: It will automatically install vim plugins and make the necessary symbolic link.
# http://j.mp/1g7il5x   -> short link to autoinstall-script

# backup current vim if exists

[ -d ~/.vim ] && mv ~/.vim ~/.vim.old
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.old


command -v git &>/dev/null || { echo "git not present"; exit 1; }
command -v vim &>/dev/null || { echo "vim not present"; exit 1; }

# cloning vim repo
git clone https://github.com/icadariu/vimrc.git ~/.vim

# Installing jellybeans color scheme
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

# Installing vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[ ! -h ~/.vimrc ] && ln -s ~/.vim/.vimrc ~/.vimrc

# configuring all plugins
vim +PlugInstall
