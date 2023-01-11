export CONFIG="$HOME/.config"
export ZSH="$CONFIG/zsh"

## platform specific settings
case `uname` in
  Darwin)
    source $ZSH/.zsh-macos-rc
  ;;
  Linux)
    source $ZSH/.zsh-linux-rc
  ;;
esac


# source configs

## common configs
source $ZSH/.zsh-path-rc
source $ZSH/.zsh-antigen-rc
source $ZSH/.zsh-etc-rc
source $ZSH/.zsh-env-rc
source $ZSH/.zsh-aliases-rc
source $ZSH/.zsh-functions-rc

## user settings
source $ZSH/.zsh-usr-rc

## program specific settings
source $ZSH/.zsh-usr-rc

