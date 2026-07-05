#!/usr/bin/env bash

# желаемый порядок цикла: листик -> весы -> молния
ORDER=(power-saver balanced performance)

# реально доступные профили на этой машине
mapfile -t AVAIL < <(powerprofilesctl list \
  | grep -oP '^\s*\*?\s*\K(power-saver|balanced|performance)(?=:)')

# пересечение: желаемый порядок, но только существующие
PROFILES=()
for p in "${ORDER[@]}"; do
  for a in "${AVAIL[@]}"; do
    [ "$p" = "$a" ] && PROFILES+=("$p")
  done
done

current=$(powerprofilesctl get)

# следующий по кругу
next="${PROFILES[0]}"
for i in "${!PROFILES[@]}"; do
  if [ "${PROFILES[$i]}" = "$current" ]; then
    next="${PROFILES[$(((i + 1) % ${#PROFILES[@]}))]}"
    break
  fi
done

powerprofilesctl set "$next"

# иконка + подпись
case "$next" in
  power-saver) icon="󰌪"; name="Power Saver" ;;
  balanced)    icon="󰗑"; name="Balanced" ;;
  performance) icon="󱐋"; name="Performance" ;;
esac

notify-send -h string:x-canonical-private-synchronous:powerprofile \
  "$icon  $name" "Power profile"