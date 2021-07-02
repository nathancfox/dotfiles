#!/bin/bash

cd $HOME/software
wget -q "https://kernel.org/pub/software/scm/git/git-2.31.1.tar.gz"
tar -xzf git-2.31.1.tar.gz
rm git-2.31.1.tar.gz
cd git-2.31.1
make configure
./configure \
    --prefix="$HOME/software/git-2.31.1/" \
    --with-editor="vim" \
    --with-python="$HOME/software/miniconda3/bin/python"
make all
make install
