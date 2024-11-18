#!/bin/zsh

# Get the directory of the script
SCRIPT_DIR="${0:A:h}"

source "$SCRIPT_DIR/utils/distro.sh"

source "$SCRIPT_DIR/.aliases"

# Add Starship
export STARSHIP_CONFIG="$SCRIPT_DIR/config/starship.toml"
eval "$(starship init zsh)"
