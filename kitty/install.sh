#!/usr/bin/env bash
# Installs the TokyoNight kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/TokyoNight.conf" ] && cp "$dest/TokyoNight.conf" "$dest/TokyoNight.conf.bak"
cp "$dir/TokyoNight.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/TokyoNight.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
