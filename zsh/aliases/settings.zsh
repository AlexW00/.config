function git-settings() {
    git -C "$CONFIG" "$@"
}

alias settings-status='git-settings status'
alias settings-diff='git-settings diff'
alias settings-add='git-settings add'
alias settings-add-all='git-settings add -A'
alias settings-commit='git-settings commit'
alias settings-commit-now='git-settings commit -m "$(date)"'
alias settings-push='git-settings push'
alias settings-pull='git-settings pull'
alias settings-save='settings-add-all && settings-commit-now && settings-push'

# dynamically add all settings- aliases to an array
alias settings-help="alias | grep 'settings-' | cut -d '=' -f 1"