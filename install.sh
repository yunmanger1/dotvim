#!/bin/bash
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/NickLaMuro/vim-files.git ~/.vim/vim-files
git clone git@github.com:zolrath/wemux.git ~/.vim/wemux

ln -s ~/.vim/vim-files/colors ~/.vim/colors
sudo ln -s ~/.vim/wemux/wemux /usr/local/bin/wemux
sudo ln -s ~/.vim/wemux.conf /usr/local/etc/wemux.conf
