#!/usr/bin/env zsh

echo 'deb should be in a new directory under $dotfiles_deb_directory'
export dotfiles_deb_directory=$(mktemp -d) && gh run download -p 'assaxor-dotfiles_*.deb' --dir "$dotfiles_deb_directory" $@
echo "deb is downloaded under $dotfiles_deb_directory"
