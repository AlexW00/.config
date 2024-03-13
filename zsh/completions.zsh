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
        $2 completion zsh > $1
    fi
}

function load_completion() {
    local type=$1
    local file="$COMPLETION_DIR/$type"

    if type $1 > /dev/null 2>&1; then
        create_completion_if_not_exists $file $1
        source $file
    fi
}

load_completion kubectl 
load_completion flux 
load_completion helm
load_completion docker

function delete_all_completions() {
    rm -rf $COMPLETION_DIR/*
}