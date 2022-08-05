#!/bin/bash

if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    echo "Creating id_rsa"
    bw unlock 
    bw get notes sshkey > ~/.ssh/id_rsa
    chmod 600 ~/.ssh/id_rsa
fi

