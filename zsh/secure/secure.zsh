ENV_SECURE="$ZSH/secure/env-secure.zsh"

function enter-secured-env() {
    if [ -f $ENV_SECURE ]; then
      if [ -z $IS_SECURE_ENV ]; then
        source $ENV_SECURE
        export IS_SECURE_ENV=true
        echo "Loaded secured env vars: $SOURCED_SECURE_ENV_VARS"
      else
        echo "secured environment already loaded."
      fi
    else
      echo "No secured environment loaded. $ENV_SECURE not found."
    fi
}
alias ese=enter-secured-env

function leave-secured-env() {
    if [ "$IS_SECURE_ENV" = true ]; then
        for var in $(echo $SOURCED_SECURE_ENV_VARS | tr ";" "\n"); do
          unset "$var"
        done

        unset SOURCED_SECURE_ENV_VARS
        unset IS_SECURE_ENV

        echo "Exited secured environment."
    else
        echo "Not in a secured environment."
    fi
}
alias lse=leave-secured-env

function print-secured-env() {
    if [ "$IS_SECURE_ENV" = true ]; then
        echo "secured environment vars: $SOURCED_SECURE_ENV_VARS"
    else
        echo "Not in a secured environment."
    fi
}
alias pse=print-secured-env

function add-secret-to-env() {
  local env_var_name=$1
  if [ -z $env_var_name ]; then
    echo "env var name not provided"
    return 1
  fi

  local env_var_value=$2
  if [ -z $env_var_value ]; then
    echo "env var value not provided"
    return 1
  fi

  export $env_var_name="$env_var_value"
  
  # Add the environment variable to the list of sourced variables
  if [ -z $SOURCED_SECURE_ENV_VARS ]; then
    export SOURCED_SECURE_ENV_VARS=$env_var_name
  else
    export SOURCED_SECURE_ENV_VARS="$SOURCED_SECURE_ENV_VARS;$env_var_name"
  fi
}

function source-env-from-op() {
  local env_var_name=$1
  if [ -z $env_var_name ]; then
    echo "env var name not provided"
    return 1
  fi

  local item_name=$2
  if [ -z $item_name ]; then
    echo "item name not provided"
    return 1
  fi

  local field=$3
  if [ -z $field ]; then
    echo "field not provided"
    return 1
  fi

  local vault=$4
  # if not set, default to OP_DEFAULT_VAULT
  if [ -z $vault ]; then
    # if default vault not set, error
    if [ -z $OP_DEFAULT_VAULT ]; then
      echo "vault not provided and OP_DEFAULT_VAULT not set"
      return 1
    else
      vault=$OP_DEFAULT_VAULT
    fi
  fi

  local account=$5
  # if not set, default to OP_DEFAULT_ACCOUNT
  if [ -z $account ]; then
    # if default account not set, error
    if [ -z $OP_DEFAULT_ACCOUNT ]; then
      echo "account not provided and OP_DEFAULT_ACCOUNT not set"
      return 1
    else
      account=$OP_DEFAULT_ACCOUNT
    fi
  fi


  local env_var_value
  if ! env_var_value=$(op item get $item_name --fields label=$field --vault=$vault --account=$account); then
    echo "Failed to retrieve the env var $env_var_name from 1password."
    return 1
  fi

  add-secret-to-env $env_var_name $env_var_value
}