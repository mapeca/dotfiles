# Alias cb: copies stdin to clipboard, adapted to the system
if grep -qi microsoft /proc/version 2>/dev/null; then
  alias cb="clip.exe"  # WSL
elif command -v pbcopy &> /dev/null; then
  alias cb="pbcopy"    # macOS
elif command -v xclip &> /dev/null; then
  alias cb="xclip -selection clipboard"  # Linux + xclip
elif command -v xsel &> /dev/null; then
  alias cb="xsel --clipboard --input"    # Linux + xsel
else
  echo "⚠️  No clipboard tool found for alias 'cb'. Install xclip, xsel, or pbcopy."
fi
