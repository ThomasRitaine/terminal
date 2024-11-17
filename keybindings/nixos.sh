#!/bin/zsh

# NixOS-specific keybindings
bindkey "''${key[Up]}" up-line-or-search
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
