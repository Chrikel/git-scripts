#!/bin/bash

CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTDIR="$CURRENTDIR/scripts/"

if [[ $SCRIPTDIR != *"$PATH"*  ]]
then 
    echo "export PATH=\$PATH:$SCRIPTDIR" >> ~/.bashrc
    . ~/.bashrc    
else
    echo "Setup already done"
fi

