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

source $ZSH/prompt.zsh
if [ -d "$ZSH/local" ]; then
    sourceAll "$ZSH/local"
fi

source $ZSH/plugins.zsh
export PATH=$PATH:/home/aw/.spicetify
fpath=(/Users/aweichart/.config/zsh/custom/completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.9/functions /Users/aweichart/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/aweichart/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath /Users/aweichart/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/aweichart/.antigen/bundles/zsh-users/zsh-autosuggestions)
fpath=(/Users/aweichart/.config/zsh/custom/completions /Users/aweichart/.config/zsh/custom/completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.9/functions /Users/aweichart/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/aweichart/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath /Users/aweichart/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/aweichart/.antigen/bundles/zsh-users/zsh-autosuggestions)
