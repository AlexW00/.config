export CONFIG="$HOME/.config"
export ZSH="$CONFIG/zsh"

# source configs

function sourceAll() {
  for file in $1/*; do
    source $file
  done
}

## common configs
source $ZSH/path.zsh # paths
source $ZSH/antigen.zsh # antigen
source $ZSH/env.zsh # environment variables

# aliases
sourceAll $ZSH/aliases
sourceAll $ZSH/functions
sourceAll $ZSH/etc


## source env-private.zsh if it exists
if [ -f $ZSH/env-private.zsh ]; then
  source $ZSH/env-private.zsh
fi

source $ZSH/plugins.zsh
