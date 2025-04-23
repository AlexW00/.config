# Programs
alias exa="exa --icons"
alias ur-vpn='sudo openfortivpn -c /Keys/ur-vpn'
alias kj="java -jar $HOME/Programs/Java/KanjiTomo/KanjiTomo.jar -run"

# Alt names
alias gitfetch="onefetch"

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux new
# fi

# other function aliases

alias dr="docker"
alias k="kubectl"
alias f="flux"
alias h="helm"
alias v="nvim"

# git aliases / functions
alias ga="git add"
alias gaa="git add -A"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gs="git status"
alias gac="gaa && gcm"
alias gacp="gacp && gpo"

# show last commits
alias gl="git log --oneline -n 10"

alias gc="git stash && git checkout && git stash pop"
alias gb="git stash && git checkout -b && git stash pop"
alias gbl="git stash && git branch -a && git stash pop"
