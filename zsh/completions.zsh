# Load zsh completions
autoload -Uz compinit
compinit


COMPLETION_DIR="$HOME/.zsh-completions"
if [ ! -d $COMPLETION_DIR ]; then
    mkdir -p $COMPLETION_DIR
fi

function create_completion_if_not_exists() {
    local file=$1
    local command=$2
    local completion_command=$3
    if [ -f $file ]; then
        return
    fi
    echo "Creating completion file: $file"
    $command $completion_command zsh > $file
}

function load_completion() {
    local type=$1
    local file="$COMPLETION_DIR/$type"
    local completion_command="completion"

    if [[ -n $2 ]]; then
        completion_command=$2
    fi

    if type $1 > /dev/null 2>&1; then
        create_completion_if_not_exists $file $1 $completion_command
        source $file
    fi
}

function load_tofu_completion() {
    if type tofu > /dev/null 2>&1; then
        autoload -U +X bashcompinit && bashcompinit
        complete -o nospace -C /opt/homebrew/bin/tofu tofu
    fi
}

load_completion kubectl 
load_completion flux
load_completion helm
load_completion docker
load_completion talosctl
load_completion op
load_completion hcloud
load_completion yq "shell-completion"
load_completion gitlab-ci-local "--completion"
load_completion velero

# custom completions
load_tofu_completion


function delete_all_completions() {
    rm -rf $COMPLETION_DIR/*
}