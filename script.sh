#!/bin/bash
shopt -s nullglob

if [ -z $1 ]
then
    DIRECTORY="."
else
    DIRECTORY=$1
fi

if [ -f "~/.git-templates/hooks/prepare-commit-msg" ]
then
    echo "Couldn't find ~/.git-templates/hooks/prepare-commit-msg file"
    exit
fi

for dir in $DIRECTORY
do
    for subdir in "$dir"/*
    do
        HOOKS="$subdir/.git"
        
        if [ -d "$HOOKS/hooks" ]
        then
            cp ~/.git-templates/hooks/prepare-commit-msg $HOOKS/hooks
            echo "Copied prepare-commit-msg file to $HOOKS/hooks"
        fi
    done
done