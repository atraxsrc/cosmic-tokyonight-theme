#!/usr/bin/env bash
# Installs the TokyoNight Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/tokyonight.toml" ] && cp "$dest/tokyonight.toml" "$dest/tokyonight.toml.bak"
cp "$dir/tokyonight.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/tokyonight.toml"]'
