# Load zsh completions
autoload -Uz compinit
compinit

KUBECTL_COMPLETION="$HOME/.kubectl_completion"
FLUX_COMPLETION="$HOME/.flux_completion"
HELM_COMPLETION="$HOME/.helm_completion"

function create_completion_if_not_exists() {
    if [ ! -f $1 ]; then
        echo "Creating completion file: $1"
        $2 completion zsh > $1
    fi
}

# Kubectl completions
if type kubectl > /dev/null 2>&1; then
    create_completion_if_not_exists $KUBECTL_COMPLETION kubectl
    source $KUBECTL_COMPLETION
fi

# Flux completions
if type flux > /dev/null 2>&1; then
    create_completion_if_not_exists $FLUX_COMPLETION flux
    source $FLUX_COMPLETION
fi

# Helm completions
if type helm > /dev/null 2>&1; then
    create_completion_if_not_exists $HELM_COMPLETION helm
    source $HELM_COMPLETION
fi

function delete_all_completions() {
    rm -f $KUBECTL_COMPLETION
    rm -f $FLUX_COMPLETION
    rm -f $HELM_COMPLETION
}