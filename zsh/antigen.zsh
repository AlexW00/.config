source "$HOME/.config/zsh/lib/antigen.zsh"
antigen use oh-my-zsh

antigen bundle copypath
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# auto update antigen
# antigen bundle unixorn/autoupdate-antigen.zshplugin

# Theme
antigen bundle zsh-users/zsh-autosuggestions
antigen apply