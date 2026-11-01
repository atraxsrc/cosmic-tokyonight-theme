#!/usr/bin/env bash
# Installs the TokyoNight lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/tokyonight.yml" ] && cp "$dest/tokyonight.yml" "$dest/tokyonight.yml.bak"
cp "$dir/tokyonight.yml" "$dest/"
echo "Done. zsh/tokyonight.zsh points LG_CONFIG_FILE at config.yml plus tokyonight.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/tokyonight.yml\""
