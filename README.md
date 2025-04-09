# dotfiles
Simple dotfiles repo. Copy .bash_config into $HOME and make sure all required packages are installed.

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
fzf
fd-find
starship
conda
