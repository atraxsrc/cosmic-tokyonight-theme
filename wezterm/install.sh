#!/usr/bin/env bash
# Installs the TokyoNight WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/tokyonight.lua" ] && cp "$dest/tokyonight.lua" "$dest/tokyonight.lua.bak"
cp "$dir/tokyonight.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("tokyonight")'
