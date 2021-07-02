#!/bin/bash

if ! [[ -d ~/.ssh ]]
then
    mkdir ~/.ssh
fi

for PUBKEY in ../public_keys/*.pub
do
    cat $PUBKEY >> ~/.ssh/authorized_keys
done
