if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    # Load VS Code shell integration if available
    [[ -f "${HOME}/.config/vscode-shell-integration.zsh" ]] && source "${HOME}/.config/vscode-shell-integration.zsh"
    
    # Disable RPROMPT in VS Code (causes detection issues)
    unset RPROMPT
    
    # Ensure simple prompt format for command detection
    # This helps Copilot detect when commands finish
    typeset -g POWERLEVEL9K_DISABLE_RPROMPT=true
    
    # Increase command timeout for longer operations
    export VSCODE_SHELL_INTEGRATION_TIMEOUT=30000
fi
