#!/usr/bin/env bash
rfkill list wifi | grep -q "Soft blocked: no" && echo true || echo false
