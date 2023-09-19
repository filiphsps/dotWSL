#!/bin/sh

printf "Repository is \$HOME...\t\t"
if [ "$PWD" = "$HOME" ]; then
    echo "YES"
else
    echo "NO"

    # TODO: Create a proper index to keep track of all dotfiles.
    #cp .zsh .gitconfig .gitattributes $HOME

    todo "Copy dotfiles"
fi