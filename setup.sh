#!/usr/bin/env bash 

# rename old config
mv "$HOME/.config" "$HOME/.config_old"

# clone new config
git clone https://github.com/AlexW00/.config.git "$HOME/.config"

# add files from old config folder to new config
cp -n -a "$HOME/.config_old/." "$HOME/.config"

# symlinks
ln -s "$HOME/.config/zsh/.zshrc" "$HOME/.zshrc"

read -p "Do you wish to install the packages as well (ONLY ARCH LINUX)? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    wget https://raw.githubusercontent.com/AlexW00/.config/master/install_packages.sh
    chmod +x install_packages.sh
    ./install_packages.sh
    rm -rf install_packages.sh
else
    echo "Finished setup (with package installation)"
fi


echo "Finished setup (withut package installation)"