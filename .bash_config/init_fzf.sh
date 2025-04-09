# FZF setup | https://github.com/junegunn/fzf?tab=readme-ov-file#setting-up-shell-integration
# Set up fzf key bindings and fuzzy completion
# eval "$(fzf --bash)"

# Manually installed fzf in $HOME dir
if [ -f ~/.fzf.bash ]; then
  source ~/.fzf.bash
fi

# If we have fzf, setup some custom settings
if command -v fzf &> /dev/null; then
  export FZF_DEFAULT_OPTS="--height 100%"

  # Check if fd exists before configuring it
  if command -v fd &> /dev/null; then
    export FZF_DEFAULT_COMMAND='fd --type file'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="fd --type directory"
  else
    echo "⚠  'fd' is not installed. FZF will use default config."
  fi
fi
