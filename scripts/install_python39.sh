#!/usr/bin/env bash

INSTALL_PATH=$HOME/software/python39
SOURCE_LINK="https://www.python.org/ftp/python/3.9.13/Python-3.9.13.tgz"
TMP_PATH=/tmp/python39
DOWNLOADED_TARBALL="Python-3.9.13.tgz"
UNTARRED_DIR="Python-3.9.13"

if [[ -d $INSTALL_PATH ]]; then
    rm -rf $INSTALL_PATH
fi
if [[ -d $TMP_PATH ]]; then
    rm -rf $TMP_PATH
fi

mkdir -p $INSTALL_PATH
mkdir -p /tmp/python39

cd $TMP_PATH
curl -o $DOWNLOADED_TARBALL "$SOURCE_LINK"
tar -xzf $TMP_PATH/$DOWNLOADED_TARBALL

cd $TMP_PATH/$UNTARRED_DIR
./configure --prefix=$INSTALL_PATH && make && make install

ln -rs $INSTALL_PATH/bin/pip3 $INSTALL_PATH/bin/pip
ln -rs $INSTALL_PATH/bin/python3 $INSTALL_PATH/bin/python

$INSTALL_PATH/bin/python -m pip install -u pip
$INSTALL_PATH/bin/python -m pip install -u ipython
