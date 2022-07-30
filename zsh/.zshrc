export CONFIG="$HOME/.config"
export ZSH="$CONFIG/zsh"

# dependencies
source /usr/share/zsh/share/antigen.zsh

# source configs

## common configs
source $ZSH/.zsh-antigen-rc
source $ZSH/.zsh-env-rc
source $ZSH/.zsh-path-rc
source $ZSH/.zsh-aliases-rc

## user settings
source $ZSH/.zsh-usr-rc

## program specific settings
source $ZSH/.zsh-usr-rc

## platform specific settings
case `uname` in
  Darwin)
    source $ZSH/.zsh-macos-rc
  ;;
  Linux)
    # commands for Linux go here
  ;;
esac