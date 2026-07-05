#!/usr/bin/env bash
bluetoothctl show | grep -q "Powered: yes" && echo true || echo false
