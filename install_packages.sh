# installs all the necessary packages

# antigen
#curl -L git.io/antigen > /usr/share/zsh/share/antigen.zsh

# normal packages using pacman
wget https://raw.githubusercontent.com/AlexW00/.config/master/packages
sudo pacman -S --needed - < packages
rm -rf packages