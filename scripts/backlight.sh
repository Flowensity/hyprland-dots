#!/usr/bin/env bash

# Get brightness
get_backlight() {
	LIGHT=$(printf "%.0f\n" $(brightnessctl g))
	echo "${LIGHT}"
}

# Notify
notify_user() {
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low "Brightness : `expr $(get_backlight) / 960`%"
}

# Increase brightness
inc_backlight() {
	brightnessctl s +5% && notify_user
}

# Decrease brightness
dec_backlight() {
	brightnessctl s 5%- && notify_user
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_backlight
elif [[ "$1" == "--inc" ]]; then
	inc_backlight
elif [[ "$1" == "--dec" ]]; then
	dec_backlight
else
	get_backlight
fi
