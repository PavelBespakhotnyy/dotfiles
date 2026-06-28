#!/usr/bin/env bash

action=$(printf "Reboot\nPower off" | rofi -dmenu -i -p "Power" \
  -theme ~/.config/rofi/launcher.rasi)

[ -z "$action" ] && exit 0 

confirm=$(printf "No\nYes" | rofi -dmenu -i -p "$action?" \
  -theme ~/.config/rofi/launcher.rasi)

[ "$confirm" != "Yes" ] && exit 0

case "$action" in
  "Reboot")    systemctl reboot ;;
  "Power off") systemctl poweroff ;;
esac