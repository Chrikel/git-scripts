#!/bin/bash

CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTDIR="$CURRENTDIR/scripts/"
SHELLCONFIG=""

if [ -r ~/.bashrc ] 
then 
    SHELLCONFIG="~/.bashrc"
fi

if [ -r ~/.zshrc ]
then
    SHELLCONFIG="~/.zshrc"
fi

if [[ $SCRIPTDIR != *"$PATH"*  ]]
then 
   if [ -z $SHELLCONFIG ]
   then
        echo "No shellconfig file found"
        echo "Add line to your shell config"
        echo "export PATH=\$PATH:$SCRIPTDIR"
    else
        echo "export PATH=\$PATH:$SCRIPTDIR" >> $SHELLCONFIG
        . $SHELLCONFIG
    fi    
else
    echo "Setup already done"
fi

