#!/bin/bash
swayidle -w timeout 600 'swaylock -f' \
            timeout 900 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'swaylock -f' &
