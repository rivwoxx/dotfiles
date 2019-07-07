#!/bin/bash
HDMI_STATUS="$(cat /sys/class/drm/card0-HDMI-A-1/status)"
USER="rivwox"
export XAUTHORITY=/home/rivwox/.Xauthority
export DISPLAY=:0

if [ "$HDMI_STATUS" = connected ];
then
xrandr --output LVDS1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --mode 1366x768 --pos 1366x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off
else
xrandr --output LVDS1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --off --output VGA1 --off --output VIRTUAL1 --off
fi
exit 0
