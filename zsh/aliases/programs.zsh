# Programs
alias exa="exa --icons"
alias ur-vpn='sudo openfortivpn -c /Keys/ur-vpn'
alias kj="java -jar $HOME/Programs/Java/KanjiTomo/KanjiTomo.jar -run"

# Alt names
alias gitfetch="onefetch"

# NVM
NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux new
# fi

# other function aliases

alias dr="docker"
alias k="kubectl"
alias f="flux"
alias h="helm"
alias g="git"
alias v="nvim"

# git aliases / functions
alias gaa="git add -A"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gs="git status"
alias gacp="gaa && gcm && gpo"

