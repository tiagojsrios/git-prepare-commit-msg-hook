#!/bin/bash
shopt -s nullglob

if [ -z $1 ]
then
    DIRECTORY="."
else
    DIRECTORY=$1
fi

for dir in $DIRECTORY
do
    for subdir in "$dir"/*
    do
        HOOKS="$subdir/.git"
        
        if [[ -d "$HOOKS/hooks" ]]
        then
            cp ./prepare-commit-msg $HOOKS/hooks
            printf "Copied prepare-commit-msg file to $HOOKS/hooks\n"
        fi
    done
done