local vars = require("conf.vars")

-- App Launch
hl.bind("SUPER + W", hl.dsp.exec_cmd(vars.browser))
hl.bind("SUPER + C", hl.dsp.exec_cmd(vars.editor))
hl.bind("SUPER + SHIFT + SPACE", hl.dsp.exec_cmd("pkill waybar || waybar"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("rofi -show drun -theme ~/.config/rofi/launcher.rasi"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("bash -c 'cliphist list | rofi -dmenu -p \"\" -theme ~/.config/rofi/clipboard.rasi | cliphist decode | wl-copy'"))

-- Transperancy off/on
hl.bind("SUPER + BackSpace", hl.dsp.exec_cmd(
  [[hyprctl eval 'hl.config({ decoration = { active_opacity = 0.95, inactive_opacity = 0.95 } })']]
))
hl.bind("SUPER + SHIFT + BackSpace", hl.dsp.exec_cmd(
  [[hyprctl eval 'hl.config({ decoration = { active_opacity = 1.0, inactive_opacity = 1.0 } })']]
))

-- Screenshot
hl.bind("SUPER + Print",
  hl.dsp.exec_cmd([[bash -c 'grim -g "$(slurp)" - | swappy -f -']]))
