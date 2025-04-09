# Conda shortcut with env selector or base by deafult
function aconda() {
  if [ ! -d "$HOME/.miniconda3" ]; then
    echo "⚠️  Conda no está instalado en ~/.miniconda3."
    return 1
  fi

  if [ -z "$1" ]; then
    source "$HOME/.miniconda3/bin/activate" base
    conda activate $(conda env list | tail -n +4 | fzf | cut -d " " -f1)
  else
    source "$HOME/.miniconda3/bin/activate" "$1"
  fi
}
