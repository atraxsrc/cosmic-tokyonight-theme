-- TokyoNight for WezTerm, part of cosmic-tokyonight-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("tokyonight")
-- To follow COSMIC's Dark / Light toggle with the Tokyo Day half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "tokyonight" or "tokyoday")

return {
  foreground = "#A9B1D6",
  background = "#1A1B26",

  cursor_bg = "#A9B1D6",
  cursor_fg = "#1A1B26",
  cursor_border = "#A9B1D6",
  compose_cursor = "#E0AF68",

  selection_bg = "#4E5576",
  selection_fg = "none",

  scrollbar_thumb = "#646A83",
  split = "#646A83",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#1D202F", "#F93356", "#8FD78A", "#E9BD64", "#5C9FF4", "#B974DC", "#59C2C7", "#A9B1D6" },
  brights = { "#646A83", "#F47687", "#A3D7A3", "#ECD3A0", "#91C0F4", "#CEB1EC", "#7AD1D9", "#C4CFF4" },

  copy_mode_active_highlight_bg = { Color = "#7AA2F7" },
  copy_mode_active_highlight_fg = { Color = "#1A1B26" },
  copy_mode_inactive_highlight_bg = { Color = "#E9BD64" },
  copy_mode_inactive_highlight_fg = { Color = "#1A1B26" },

  quick_select_label_bg = { Color = "#E0AF68" },
  quick_select_label_fg = { Color = "#1A1B26" },
  quick_select_match_bg = { Color = "#E9BD64" },
  quick_select_match_fg = { Color = "#1A1B26" },

  tab_bar = {
    background = "#1A1B26",
    active_tab = { bg_color = "#7AA2F7", fg_color = "#1A1B26", intensity = "Bold" },
    inactive_tab = { bg_color = "#24283B", fg_color = "#A9B1D6" },
    inactive_tab_hover = { bg_color = "#292E42", fg_color = "#A9B1D6" },
    new_tab = { bg_color = "#1A1B26", fg_color = "#A9B1D6" },
    new_tab_hover = { bg_color = "#292E42", fg_color = "#7AA2F7" },
  },
}
