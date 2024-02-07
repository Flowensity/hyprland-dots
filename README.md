<div>
    <H1>Flowenisty's Hyprland dotfiles <H1> 
</div>

- Window Manager: [Hyprland](https://github.com/hyprwm/Hyprland)

- Shell: [Zsh](https://www.zsh.org/)

- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)

- Status Bar: [Waybar](https://github.com/Alexays/Waybar)

- launcher: [Wofi](https://man.archlinux.org/man/wofi.1)

## preview
![preview](preview.png) 

<details> <summary><h2>Install</h2></summary>

```Shell
prau -S kitty hyprland waybar dust nwg-bar nwg-look swaylock-effects catppuccin-gtk-theme-macchiato \
  tela-icon-theme-bin cava neofetch qt5ct nwg-look swww wofi swayidle grim slurp qt5-wayland qt6-wayland \
  polkit-kde-agent xdg-desktop-portal cliphist udiskie sddm-git

```
### App
```Shell
paru -S librewolf-bin brave-bin thunar waydroid vlc koodo-reader-bin kdeconnect linux-wifi-hotspot \
  obs-studio motrix-bin rustdesk-bin
```

</details>

## Keybindings
| Keys                | Action           |
|:-------------------:|:----------------:|
| SUPER + Q           | launch kitty     |
| SUPER + B           | launch librewolf |
| SUPER + C           | killactive       |
| SUPER + M           | quit hyprland    |
| SUPER + E           | launch thunar    |
| SUPER + V           | togglefloating   |
| SUPER + R           | launch wofi      |
| SUPER + SHIFT + F   | fullscreen       |
| SUPER + H/J/K/L     | movefocus        |
| SUPER + 1-9         | toggle workspace |
| SUPER + SHIFT + 1-9 | movetoworkspace  |
| SUPER + mouse:272   | movewindow       |
| SUPER + mouse:273   | resizewindow     |
| SUPER +ESCAPE       | launch nwg-bar   |
| SUPER + SHIFT + S   | screenshot       |
| SUPER + SHIFT + L   | launch swaylock  |
| SUPER + X           | clipboard        |
| SUPER + SHIFT + W   | chang wallpaper  |

