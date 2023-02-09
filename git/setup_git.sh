#!/usr/bin/env zsh

set -x

REAL_DIR=$(dirname -- "$0:A")

git config --global core.excludesfile "$REAL_DIR/.gitignore_global"

