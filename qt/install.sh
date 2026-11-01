#!/usr/bin/env bash
# Installs the TokyoNight Qt colour scheme for qt5ct and qt6ct
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
for v in qt5ct qt6ct; do
    dest=~/.config/$v/colors
    mkdir -p "$dest"
    [ -f "$dest/TokyoNight.conf" ] && cp "$dest/TokyoNight.conf" "$dest/TokyoNight.conf.bak"
    cp "$dir/TokyoNight.conf" "$dest/"
    echo "  $v: colors/TokyoNight.conf"
done
echo "Done. In qt5ct / qt6ct: Appearance -> Color scheme -> TokyoNight, Palette: Custom -> Apply."
echo "Qt apps read it with QT_QPA_PLATFORMTHEME=qt6ct (or qt5ct) in the environment."
