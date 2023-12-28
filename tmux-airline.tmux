#! /usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ ! $TERM == linux ]]; then
	tmux source "$CURRENT_DIR/themes/airline-solarized-dark.tmux"
fi
