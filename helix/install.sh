#!/usr/bin/env bash
# Installs the TokyoNight Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/tokyonight.toml" ] && cp "$dest/tokyonight.toml" "$dest/tokyonight.toml.bak"
cp "$dir/tokyonight.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "tokyonight"'
