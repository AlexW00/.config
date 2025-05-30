function prompt() {
    local prefixes=""

    if [ "$(id -u)" -eq 0 ]; then
        prefixes="$prefixes👑"
    fi

    if [ -n "$DOCKER_CONTAINER_NAME" ]; then
        prefixes="$prefixes🐳"
    fi

    if [ -n "$IS_SECURE_ENV" ]; then
        prefixes="$prefixes🔓"
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

    if [[ "$PWD" == *"$DV_DEVTOOLS_DIR"* ]]; then
        prefixes="$prefixes🔧"
    fi

    local kube_info="" # context + NS

    # if kubectx and kubens are installed
    if command -v kubectx &> /dev/null && command -v kubens &> /dev/null; then
        local kube_c=$(kubectx -c 2>/dev/null || echo "none")
        local kube_n=$(kubens -c 2>/dev/null || echo "none")

        local kubie_prefix=""
        if command -v kubie &> /dev/null; then
            if [ -n "$KUBIE_SESSION" ]; then
                kubie_prefix="%(?.%F{magenta}*%f.%F{red}*%f)"
            fi
        fi

        kube_info="${kubie_prefix}${kube_c}/${kube_n}%F{blue}"
    fi

    echo "%F{blue}$prefixes [$kube_info] › %f"
}

function rprompt() {
    local kube_context=""
    local git_branch=""

    if [ -n "$KUBECONFIG" ] || [ -f "$HOME/.kube/config" ]; then
        kube_context="⚓️ $(kubectl config current-context 2>/dev/null || echo "none")"
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

    # if [ -n "$kube_context" ]; then
    #     final_prompt="$kube_context"
    # fi

    if [ -n "$git_branch" ]; then
        if [ -n "$final_prompt" ]; then
            final_prompt="$final_prompt | $git_branch"
        else
            final_prompt="$git_branch"
        fi
    fi

    # current path
    final_prompt="$final_prompt %F{blue}%~%f"
    

    echo "$final_prompt"
}

export PROMPT='$(prompt)'
export RPROMPT='$(rprompt)'
