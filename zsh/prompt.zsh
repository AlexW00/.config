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

    if [ -n "$UFP_DIR" ] && [[ "$PWD" == *"$UFP_DIR"* ]]; then
        prefixes="$prefixes💸"
    fi

    if [ -n "$DESIGN_SYSTEM_DIR" ] && [[ "$PWD" == *"$DESIGN_SYSTEM_DIR"* ]]; then
        prefixes="$prefixes🎨"
    fi

    if [ -n "$DVPDEV_INFRA_DIR" ] && [[ "$PWD" == *"$DVPDEV_INFRA_DIR"* ]]; then
        prefixes="$prefixes⚙️"
    fi

    if [ -n "$GITOPS_DEPLOYMENTS_DIR" ] && [[ "$PWD" == *"$GITOPS_DEPLOYMENTS_DIR"* ]]; then
        prefixes="$prefixes🚀"
    fi

    if [ -n "$DV_DEVTOOLS_DIR" ] && [[ "$PWD" == *"$DV_DEVTOOLS_DIR"* ]]; then
        prefixes="$prefixes🔧"
    fi

    local kube_info="" # context + NS
    local kube_brackets=""

    # if kubectl is installed and kubectx and kubens are available
    if command -v kubectl &> /dev/null && command -v kubectx &> /dev/null && command -v kubens &> /dev/null; then
        local kube_c=$(kubectx -c 2>/dev/null || echo "none")
        local kube_n=$(kubens -c 2>/dev/null || echo "none")

        local kubie_prefix=""
        if command -v kubie &> /dev/null; then
            if [ -n "$KUBIE_SESSION" ]; then
                kubie_prefix="%(?.%F{magenta}*%f.%F{red}*%f)"
            fi
        fi

        kube_info="${kubie_prefix}${kube_c}/${kube_n}%F{blue}"
        kube_brackets="[$kube_info] "
    fi

    echo "%F{blue}$prefixes ${kube_brackets}› %f"
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
