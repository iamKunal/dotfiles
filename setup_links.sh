#!/usr/bin/env zsh

set -x

REAL_DIR=$(dirname -- "$0:A")

# src or src:dst (when target name differs).
# src is relative to .zfiles, dst is relative to $HOME.
LINKS=(
  .zshrc
  .vimrc.before
  .vimrc.after
  .mackup.cfg
  .mackup
  git:.config/git
)

for entry in $LINKS; do
  src=${entry%%:*}
  dst=${entry##*:}
  target=$HOME/$dst
  mkdir -p "$(dirname -- "$target")"
  ln -sfn "$REAL_DIR/$src" "$target"
done
