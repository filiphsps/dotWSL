#!/bin/sh

printf "Repository is \$HOME...\t\t"
if [ "$PWD" = "$HOME" ]; then
    echo "YES"
else
    echo "NO"

    printf "Copying dotfiles...\t\t"
    # TODO: Create a proper index to keep track of all dotfiles.
    cp $PWD/.zshrc $PWD/.gitconfig $PWD/.gitattributes $PWD/.gitignore $HOME
    echo "DONE"
fi
