#!/usr/bin/env bash 

# rename old config
mv "$HOME/.config" "$HOME/.config_old"

# clone new config
git clone https://github.com/AlexW00/.config.git "$HOME/.config"

# add files from old config folder to new config
cp -n -a "$HOME/.config_old/." "$HOME/.config"

# symlinks
ln -s "$HOME/.config/zsh/.zshrc" "$HOME/.zshrc"

ln -s "$HOME/.config/.ideavimrc" "$HOME/.ideavimrc"

# setup krew
./setup_krew.sh

echo "Finished setup (with package installation)"
