if [[ -f /run/.containerenv && -f /run/.toolboxenv ]]; then
  # change the prompt to show we're in a toolbox container
  # works with the minimal zsh theme
  export MNML_USER_CHAR="📦"
fi