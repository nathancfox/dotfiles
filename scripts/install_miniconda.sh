#!/bin/bash

wget -q "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
bash Miniconda3-latest-Linux-x86_64.sh -bu -p ~/sandbox/miniconda3
$HOME/sandbox/miniconda3/bin/conda config --set auto_activate_base false
$HOME/sandbox/miniconda3/bin/conda install --yes numpy pandas ipython seaborn matplotlib pyyaml
rm Miniconda3-latest-Linux-x86_64.sh
