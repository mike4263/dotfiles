#/usr/bin/env bash
set -x

# https://wiki.archlinux.org/index.php/HiDPI#Fractional_Scaling
# see also arandr

# it is assumed that you have a xlayout display configured
#XLAYOUT=$(./xlayoutdisplay)

GSETTINGS_SCALE=2
XRANDR_SCALE=1.25

# get this from the output of the other script
HORIZONTAL=2560

gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "[{'Gdk/WindowScalingFactor', <${GSETTINGS_SCALE}>}]"
gsettings set org.gnome.desktop.interface scaling-factor $GSETTINGS_SCALE

# Scale to the size we want
xrandr \
 --output HDMI-1 --auto --primary --scale ${XRANDR_SCALE}x${XRANDR_SCALE} \
 --output DP-3 --auto --scale ${XRANDR_SCALE}x${XRANDR_SCALE} \
 --output DP-1 --off \
 --output DP-2 --off


OFFSET=$(awk "BEGIN {printf \"%.0f\n\", $XRANDR_SCALE*$HORIZONTAL}")
echo $OFFSET

# Then we adjust the offset
xrandr --output HDMI-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
	--output DP-3 --mode 2560x1440 --pos ${OFFSET}x0 --rotate normal \
	--output DP-2 --off \
	--output DP-1 --off
