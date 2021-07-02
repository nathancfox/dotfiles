#!/bin/bash

if ! [[ -d ~/.ssh ]]
then
    mkdir ~/.ssh
fi

if ! [[ -f ~/.ssh/id_rsa_$(hostname).pub ]]
then
    # Generate public key
    ssh-keygen -f ~/.ssh/id_rsa_$(hostname) -N ""
fi

cp ~/.ssh/id_rsa_$(hostname).pub ../public_keys

# Git commit and push back to the host, asking for password
# since github won't have the new machine's public key.
git commit -m "Added public SSH key for machine \"$(hostname)\"."
git push
