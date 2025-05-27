# Alias cb: copies stdin to clipboard, adapted to the system
if grep -qi microsoft /proc/version 2>/dev/null; then
  alias cb="clip.exe"  # WSL
elif command -v pbcopy &> /dev/null; then
  alias cb="pbcopy"    # macOS
elif command -v xclip &> /dev/null; then
  alias cb="xclip -selection clipboard"  # Linux (x11) + xclip
elif command -v xsel &> /dev/null; then
  alias cb="xsel --clipboard --input"    # Linux (x11) + xsel
elif command -v wl-copy &> /dev/null; then
  alias cb="wl-copy"                     # Linux (Wayland)
else
  echo "⚠️  No clipboard tool found for alias 'cb'. Install xclip, xsel, or pbcopy."
fi

# Alias ls
alias l='ls -alF'
alias la='ls -la'
alias ll='ls -l'

# Directory movement
alias ..="cd .."
alias ...="cd ../.."

