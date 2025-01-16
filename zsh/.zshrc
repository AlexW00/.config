export ZSH="$HOME/.oh-my-zsh"
export CONFIG="$HOME/.config"
export ZSH_CONFIG="$CONFIG/zsh"

# source configs
function sourceAll() {
  for file in $1/*; do
    source $file
  done
}

## common configs
source $ZSH_CONFIG/path.zsh # paths
source $ZSH_CONFIG/env.zsh # environment variables

# aliases
sourceAll $ZSH_CONFIG/aliases
sourceAll $ZSH_CONFIG/functions
sourceAll $ZSH_CONFIG/etc

## source env-private.zsh if it exists
if [ -f $ZSH_CONFIG/env-private.zsh ]; then
  source $ZSH_CONFIG/env-private.zsh
fi

source $ZSH_CONFIG/prompt.zsh
if [ -d "$ZSH_CONFIG/local" ]; then
    sourceAll "$ZSH_CONFIG/local"
fi

source $ZSH_CONFIG/plugins.zsh
source $ZSH_CONFIG/completions.zsh

source $ZSH/oh-my-zsh.sh

[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"
