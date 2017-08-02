#!/bin/bash

CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTDIR="$CURRENTDIR/scripts/"

if [[ $SCRIPTDIR != *"$PATH"*  ]]
then 
    echo "Setting scripts in PATH variable"
    echo "export PATH:$PATH:$SCRIPTDIR" >> ~/.profile
else
    echo "Setup already done"
fi

