# Load zsh completions
autoload -Uz compinit
compinit


COMPLETION_DIR="$HOME/.zsh-completions"
if [ ! -d $COMPLETION_DIR ]; then
    mkdir -p $COMPLETION_DIR
fi

function create_completion_if_not_exists() {
    if [ ! -f $1 ]; then
        echo "Creating completion file: $1"
        $2 $3 zsh > $1
    fi
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

load_completion kubectl 
load_completion flux
load_completion helm
load_completion docker
load_completion talosctl
load_completion op # doesnt work idk
load_completion yq "shell-completion"

function delete_all_completions() {
    rm -rf $COMPLETION_DIR/*
}