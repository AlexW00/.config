export CONFIG="$HOME/.config"
export ZSH="$CONFIG/zsh"

# source configs

function sourceAll() {
  for file in $1/*; do
    source $file
  done
}

# aliases
sourceAll $ZSH/aliases
sourceAll $ZSH/functions
sourceAll $ZSH/etc

## common configs
source $ZSH/path.zsh # paths
source $ZSH/antigen.zsh # antigen
source $ZSH/env.zsh # environment variables

## source env-private.zsh if it exists
if [ -f $ZSH/env-private.zsh ]; then
  source $ZSH/env-private.zsh
fi

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

source $ZSH/plugins.zsh
