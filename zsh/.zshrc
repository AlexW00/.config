export CONFIG="$HOME/.config"
export ZSH="$CONFIG/zsh"

# source configs

# aliases
for file in $ZSH//aliases/*; do
  source $file
done


# functions
for file in $ZSH//functions/*; do
  source $file
done

## common configs
source $ZSH/path.zsh # paths
source $ZSH/antigen.zsh # antigen
source $ZSH/env.zsh # environment variables
source $ZSH/etc.zsh # program settings
source $ZSH/usr.zsh # user settings

