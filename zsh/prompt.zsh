function prompt() {
    local prefixes=""

    if [ "$(id -u)" -eq 0 ]; then
        prefixes="$prefixes👑"
    fi

    if [ "$IS_SECURE_ENV" = true ]; then
        prefixes="$prefixes🔓"
    fi

    if [ -n "$DOCKER_CONTAINER_NAME" ]; then
        prefixes="$prefixes🐳"
    fi

    if [[ "$PWD" == *"$UFP_DIR"* ]]; then
        prefixes="$prefixes💸"
    fi

    if [[ "$PWD" == *"$DESIGN_SYSTEM_DIR"* ]]; then
        prefixes="$prefixes🎨"
    fi

    if [[ "$PWD" == *"$DVPDEV_INFRA_DIR"* ]]; then
        prefixes="$prefixes⚙️"
    fi

    if [[ "$PWD" == *"$GITOPS_DEPLOYMENTS_DIR"* ]]; then
        prefixes="$prefixes🚀"
    fi

    echo "%F{green}$prefixes %n› %f"
}

function rprompt() {
    local kube_context=""
    local git_branch=""

    if [ -n "$KUBECONFIG" ] || [ -f "$HOME/.kube/config" ]; then
        kube_context="⚓️ $(kubectl config current-context)"
    fi

    if [ -n "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ]; then
        git_branch="$(git rev-parse --abbrev-ref HEAD)"

        if [ "$git_branch" = "master" ]; then
            git_branch="🌳 $git_branch"
        elif [[ "$git_branch" == *"bugfix"* ]]; then
            git_branch="🐛 $git_branch"
        else 
            git_branch="🌱 $git_branch"
        fi
    fi

    local final_prompt=""

    if [ -n "$kube_context" ]; then
        final_prompt="$kube_context"
    fi

    if [ -n "$git_branch" ]; then
        if [ -n "$final_prompt" ]; then
            final_prompt="$final_prompt | $git_branch"
        else
            final_prompt="$git_branch"
        fi
    fi

    echo "$final_prompt"
}

export PROMPT='$(prompt)'
export RPROMPT='$(rprompt)'