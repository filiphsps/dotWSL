#!/bin/sh

printf "Installing required deps...\t"
sudo apt install git wget curl zsh -y > /dev/null 2>&1
echo "DONE"

. $PWD/script/install/components/dotfiles.sh
. $PWD/script/install/components/ohmyzsh.sh
