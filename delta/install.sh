#!/usr/bin/env bash
# Installs the TokyoNight delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/tokyonight.gitconfig" ] && cp "$dest/tokyonight.gitconfig" "$dest/tokyonight.gitconfig.bak"
cp "$dir/tokyonight.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/tokyonight.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/tokyonight.gitconfig"
fi
echo "Needs the bat TokyoNight theme for the code colours: ./bat/install.sh"
