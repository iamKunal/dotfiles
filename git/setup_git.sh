#!/usr/bin/env zsh

set -x

REAL_DIR=$(dirname -- "$0:A")

CONFIG_DIR="$HOME/.config/git"


ln -s "$REAL_DIR" "$CONFIG_DIR"
