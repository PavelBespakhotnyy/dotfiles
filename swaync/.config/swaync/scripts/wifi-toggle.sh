#!/usr/bin/env bash
if [ "$SWAYNC_TOGGLE_STATE" = "true" ]; then
  rfkill unblock wifi
else
  rfkill block wifi
fi
