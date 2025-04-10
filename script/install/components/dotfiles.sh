#!/bin/sh

printf "Repository is \$HOME...\t\t"
if [ "$PWD" = "$HOME" ]; then
    echo "YES"
else
    echo "NO"

    printf "Copying dotfiles...\t\t"
    # TODO: Create a proper index to keep track of all dotfiles.
    cp -r $PWD/.config $PWD/.vim $PWD/.gnupg $HOME
    cp $PWD/.vimrc $PWD/.nvimrc $PWD/.zshrc $PWD/.gitconfig $PWD/.gitattributes $PWD/.gitignore $HOME
    echo "DONE"
fi
