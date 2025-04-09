# FZF setup | https://github.com/junegunn/fzf?tab=readme-ov-file#setting-up-shell-integration
# Set up fzf key bindings and fuzzy completion
# eval "$(fzf --bash)"

# Manually installed fzf in $HOME dir
if [ -f ~/.fzf.bash ]; then
  source ~/.fzf.bash
fi

# Detect if we are using fd or fdfind
if command -v fd >/dev/null 2>&1; then
  export FD_CMD="fd"
elif command -v fdfind >/dev/null 2>&1; then
  export FD_CMD="fdfind"
else
  echo "⚠️  Neither 'fd' or 'fdfind' was found. FZF shortcuts wont work."
  return 0
fi

# If we have fzf, setup some custom settings
if command -v fzf &> /dev/null; then
  export FZF_DEFAULT_OPTS="--height 100%"
  export FZF_DEFAULT_COMMAND='$FD_CMD --type file'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FD_CMD --type directory"
fi
