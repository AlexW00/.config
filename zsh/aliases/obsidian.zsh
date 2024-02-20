export OBSIDIAN_PATH="$HOME/Documents/Obsidian"
export DEFAULT_VAULT="obs"

function obsidian-vaults() {
  local vaults
  vaults=$(ls -d $OBSIDIAN_PATH/*/)
  vaults=${vaults//$OBSIDIAN_PATH\//}
  vaults=${vaults//\//}
  echo $vaults
}

function _is_valid_vault() {
    local vaults=$(obsidian-vaults)
    local vault=$1

    for v in $vaults; do
        if [ "$v" = "$vault" ]; then
            return 0
        fi
    done

    return 1
}

function _default_vault_name() {
    if [ -z "$DEFAULT_VAULT" ]; then
        echo "No default vault set. Please set the DEFAULT_VAULT environment variable to the name of your default vault."
        return 1
    fi

    if ! _is_valid_vault $DEFAULT_VAULT; then
        echo "The default vault '$DEFAULT_VAULT' is not a valid vault."
        return 1
    fi

    echo $DEFAULT_VAULT
}

function _default_vault_or_arg() {
    if [ -z "$1" ]; then
        echo $(_default_vault_name)
    else
        if ! _is_valid_vault $1; then
            echo "The vault '$1' is not a valid vault."
            return 1
        fi
        echo $1
    fi
}

function git-obsidian() {
    local vault=$(_default_vault_or_arg $1)
    shift
    git -C "$OBSIDIAN_PATH/$vault" "$@"
}


function obsidian-status() {
    local vault=$(_default_vault_or_arg $1)
    git-obsidian $vault status
}

function obsidian-add-all() {
    local vault=$(_default_vault_or_arg $1)
    git-obsidian $vault add -A
}

function obsidian-commit-now() {
    local vault=$(_default_vault_or_arg $1)
    git-obsidian $vault commit -m "$(date)"
}

function obsidian-push() {
    local vault=$(_default_vault_or_arg $1)
    git-obsidian $vault push
}

function obsidian-pull() {
    local vault=$(_default_vault_or_arg $1)
    git-obsidian $vault pull
}

function obsidian-save() {
    local vault=$(_default_vault_or_arg $1)
    obsidian-add-all $vault && obsidian-commit-now $vault && obsidian-push $vault
}


function obsidian-help() {
    echo "obsidian-vaults: list all vaults"
    echo "obsidian-status [vault]: show the status of the vault"
    echo "obsidian-add-all [vault]: add all changes to the vault"
    echo "obsidian-commit-now [vault]: commit all changes to the vault with the current date as the message"
    echo "obsidian-push [vault]: push all changes to the vault"
    echo "obsidian-pull [vault]: pull all changes from the vault"
    echo "obsidian-save [vault]: add all changes, commit with the current date, and push to the vault"
    echo "obsidian-help: show this help message"
}