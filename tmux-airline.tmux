#! /usr/bin/env bash

default_theme="themes/airline-solarized-dark.tmux"
chosen_theme=$(tmux show-options -gqv @chosen_theme)
theme=$chosen_theme

[[ -z $chosen_theme ]] && theme=$default_theme 

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ ! $TERM == linux ]]; then
	tmux source "$CURRENT_DIR/$theme"
fi
