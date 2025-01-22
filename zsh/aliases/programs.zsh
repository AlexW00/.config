# Programs
alias exa="exa --icons"
alias ur-vpn='sudo openfortivpn -c /Keys/ur-vpn'
alias kj="java -jar $HOME/Programs/Java/KanjiTomo/KanjiTomo.jar -run"

# Alt names
alias gitfetch="onefetch"

# NVM
NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux new
# fi

# other function aliases

alias dr="docker"
alias k="kubectl"
alias f="flux"
alias h="helm"
alias g="git"
alias v="nvim"

# git aliases / functions
# committing/pushing
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit -m"
alias gac="gaa && gc"
alias gpo="git push origin"
function gacp() {
  local commit_message=$1
  if [ -z "$commit_message" ]; then
    echo "Please provide a commit message as an argument."
  else
    gac "$1" && gpo
  fi
}

# inspecting
alias gs="git status"
alias gl="git log --oneline -n 10"

# branching
switch_branch() {
    local branch=$1
    local create_new=$2

    echo "Stashing changes..."
    git stash

    if [ "$create_new" = true ]; then
        echo "Creating branch $branch..."
        if git checkout -b "$branch"; then
            echo "Successfully created branch $branch"
        else
            echo "Failed to create branch $branch"
            git stash pop
            return 1
        fi
    else
        echo "Switching to branch $branch..."
        if git checkout "$branch"; then
            echo "Successfully switched to branch $branch"
        else
            echo "Branch $branch does not exist."
            echo -n "Do you want to create it? (y/n): "
            read create_branch
            if [ "$create_branch" = "y" ]; then
                echo "Creating branch $branch..."
                if git checkout -b "$branch"; then
                    echo "Successfully created branch $branch"
                else
                    echo "Failed to create branch $branch"
                    git stash pop
                    return 1
                fi
            else
                echo "Aborting switch."
                git stash pop
                return 1
            fi
        fi
    fi

    echo "Restoring changes..."
    git stash pop
}

gbc() {
  local branch=$1
  if [ -z "$branch" ]; then
    branch=$(git branch -a | grep -v '\*' | sed 's/.* //' | fzf)
  fi
  switch_branch "$branch" false
}

gbn() {
  local branch=$1
  if [ -z "$branch" ]; then
    echo "Please provide a branch name as an argument."
  else
    switch_branch "$1" true
  fi
}


# changes

# clear all working changes
function gdall() {
  #1. ask for confirmation
  local do_confirm=false
  if [ "$1" = "-y" ]; then
    do_confirm=false
  else
    echo -n "Are you sure you want to clear all changes? (y/n): "
    read confirm
    if [ "$confirm" = "y" ]; then
      do_confirm=true
    else
      echo "Aborting clear."
      return 1
    fi
  fi

  if [ "$do_confirm" = true ]; then
    git checkout -- .
  fi
}

# discard single file changes
function gd() {
  local file=$1
  # if file = all, clear all changes
  if [ "$file" = "all" ]; then
    gdall
    return 0
  elif [ -z "$file" ]; then
    # let user pick via fzf with preview
    file=$(git status -s | fzf --preview 'git diff --color=always -- {-1}' | awk '{print $2}')
  fi
  git checkout -- "$file"
}