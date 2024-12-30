#!/usr/bin/env bash

# Terminate already running Polybar instances
polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on DP-0
MONITOR=DP-4 polybar mybar 2>&1 | tee -a /tmp/polybar-HDMI-0.log & disown

echo "Bars launched on DP-4"
