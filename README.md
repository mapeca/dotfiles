# dotfiles
Simple dotfiles repo. Copy .bash_config into $HOME and make sure all required packages are installed.

# Setup
Clone this repo and copy the `.bash_config` dir into your home. Next paste the following snippet into your `.bashrc`
```bash
# Load modular config from ~/.bash_config
if [ -d "$HOME/.bash_config" ]; then
  for config_file in "$HOME/.bash_config"/*.sh; do
    [ -r "$config_file" ] && source "$config_file"
  done
fi
```

# Modules
This section explains modules

## Conda
Enables a conda function that when called without parameter displays a list using fzf to select a desired environment.
Instead if the function gets a parameter, will try to activate a conda environment using that name.

Required packages are
- fzf
- conda

## FZF
Enables fzf to perform directory switch, file search and command history search. To perform those actions, fd is required.

Required packages are
- fzf
- fd

## Starship
Setups starship as prompt to the session.

Required packages are
- Starship

# Used packages
- [fzf](https://github.com/junegunn/fzf): should be installed using binaries in $HOME/.fzf
- [fd-find](https://github.com/sharkdp/fd)
- [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [conda](https://www.anaconda.com/docs/getting-started/miniconda/install)

