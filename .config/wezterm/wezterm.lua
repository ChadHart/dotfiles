local wezterm = require 'wezterm';

return {
  font = wezterm.font("MonoLisa Nerd Font"),
  harfbuzz_features = {"zero", "ss02", "ss03", "ss05", "ss06"},
  font_size = 18.0,

  -- color_scheme = "Abernathy",
  color_scheme = "JetBrains Darcula",
  default_cursor_style = "BlinkingBar",
  cursor_blink_rate = 400,
  force_reverse_video_cursor = false,
  enable_tab_bar = true,
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = false,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  window_decorations = "TITLE | RESIZE",
  native_macos_fullscreen_mode = false,
  send_composed_key_when_left_alt_is_pressed=false,
  send_composed_key_when_right_alt_is_pressed=false,
  use_ime = true,
  window_background_opacity = 0.9,
}



-- This is a comment
-- this is a ggggggg
-- @@@@@@@@@@
-- SSSSsssss
-- *********
-- ----
-- {|
-- </>

