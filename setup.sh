#!/bin/bash

CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTDIR="$CURRENTDIR/scripts/"
BASHCONFIG="$HOME/.profile"
ZSHCONFIG="$HOME/.zprofile"

if ! grep -q "$SCRIPTDIR" "$BASHCONFIG" 2>1 /dev/null; then
    echo "export PATH=\$PATH:$SCRIPTDIR" >> $BASHCONFIG  
    echo "Installed in BASH"
else
    echo "Already in BASH installed"
fi

if ! grep -q "$SCRIPTDIR" "$ZSHCONFIG" 2>1 /dev/null; then
    echo "export PATH=\$PATH:$SCRIPTDIR" >> $ZSHCONFIG
    echo "Installed in ZSH"
else
    echo "Already in ZSH installed"
fi



