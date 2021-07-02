#!/bin/bash

cd $HOME/software
git clone https://github.com/vim/vim.git
cd vim
mkdir bin
./configure \
    --disable-gui \
    --enable-python3interp \
    --with-python3-command="$HOME/software/miniconda3/bin/python" \
    --enable-terminal \
    --prefix="$HOME/software/vim/"
cd src
make
make install
