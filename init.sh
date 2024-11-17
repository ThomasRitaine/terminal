#!/bin/zsh

# Get the directory of the script
SCRIPT_DIR="${0:A:h}"

source "$SCRIPT_DIR/utils/distro.sh"

source "$SCRIPT_DIR/.aliases"

if [[ "$DISTRO" == "nixos" ]]; then
  source "$SCRIPT_DIR/nixos/.aliases"
  source "$SCRIPT_DIR/nixos/keybindings.sh"
fi

# Add Starship
export STARSHIP_CONFIG="$SCRIPT_DIR/config/starship.toml"
eval "$(starship init zsh)"
