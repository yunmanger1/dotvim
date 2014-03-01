#!/bin/bash
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/NickLaMuro/vim-files.git ~/.vim/vim-files

ln -s ~/.vim/vim-files/colors ~/.vim/colors
