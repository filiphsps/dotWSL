#!/bin/sh

printf "Installing ohmyzsh...\t\t"
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh}
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended > /dev/null 2>&1
echo "DONE"

printf "Installing ohmyzsh plugins...\t"
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --quiet https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "DONE"

# source $HOME/.zshrc
