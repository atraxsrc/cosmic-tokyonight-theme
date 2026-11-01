#!/usr/bin/env bash
# Installs the TokyoNight Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/TokyoNight" ] && cp "$dest/TokyoNight" "$dest/TokyoNight.bak"
cp "$dir/TokyoNight" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = TokyoNight"
echo "(or  theme = dark:TokyoNight,light:TokyoDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
