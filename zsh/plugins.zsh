local plugins_dir=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/

function install_plugin() {
    local plugin_name=$1
    local plugin_url=$2

    if [ ! -d "$plugins_dir/$plugin_name" ]; then
        echo "Cloning $plugin_name"
        git clone $plugin_url ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$plugin_name
    fi
}

function remove_plugin() {
    local plugin_name=$1

    if [ -d "$plugins_dir/$plugin_name" ]; then
        echo "Removing $plugin_name"
        rm -rf $plugins_dir/$plugin_name
    fi
}

install_plugin "fzf-tab" "https://github.com/Aloxaf/fzf-tab"
install_plugin "zsh-completions" "https://github.com/zsh-users/zsh-completions"
install_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"
install_plugin "ansible-server" "https://github.com/viasite-ansible/zsh-ansible-server.git"

plugins=(fzf-tab zsh-completions zsh-autosuggestions ansible-server)
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
