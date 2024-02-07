#!/bin/bash
swayidle -w \
	timeout 900 'swaylock -f -c 000000' \
	timeout 1200 'hyprctl dispatch dpms off && systemctl suspend' \
	resume 'hyprctl dispatch dpms on' \
	before-sleep 'swaylock -f -c 000000'
