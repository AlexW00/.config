export ZSH="$HOME/.oh-my-zsh"
export CONFIG="$HOME/.config"
export ZSH_CONFIG="$CONFIG/zsh"

ZSH_THEME="miloshadzic"

plugins=(
    fzf
)

# source files
source $ZSH/oh-my-zsh.sh

## common configs
source $ZSH_CONFIG/.zsh-env-rc
source $ZSH_CONFIG/.zsh-path-rc
source $ZSH_CONFIG/.zsh-aliases-rc

## user settings
source $ZSH_CONFIG/.zsh-usr-rc

## program specific settings
source $ZSH_CONFIG/.zsh-usr-rc

## platform specific settings
case `uname` in
  Darwin)
    source $ZSH_CONFIG/.zsh-macos-rc
  ;;
  Linux)
    # commands for Linux go here
  ;;
esac