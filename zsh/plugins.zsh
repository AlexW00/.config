local plugins_dir=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/

# if fzf tab dir doesn't exist, clone it
if [ ! -d "$plugins_dir/fzf-tab" ]; then
    echo "Cloning fzf-tab"
    git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
fi

plugins=(fzf-tab)
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup