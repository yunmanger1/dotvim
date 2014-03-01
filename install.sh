#!/bin/bash
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/tmux.conf ~/.tmux.conf
git submodule init
git submodule udpate

ln -s ~/.vim/vim-files/colors ~/.vim/colors
