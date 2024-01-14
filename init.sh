#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="${0:A:h}"

# Load bash_aliases
source "$SCRIPT_DIR/.aliases"

source "$SCRIPT_DIR/utils/distro.sh"

# Add Starship
export STARSHIP_CONFIG="$SCRIPT_DIR/config/starship.toml"
eval "$(starship init zsh)"
