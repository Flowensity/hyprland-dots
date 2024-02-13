<div>
    <H1>Flowenisty's Hyprland dotfiles <H1> 
</div>

- Window Manager: [Hyprland](https://github.com/hyprwm/Hyprland)

- Shell: [Zsh](https://www.zsh.org/)

- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)

- Status Bar: [Waybar](https://github.com/Alexays/Waybar)

- launcher: [Wofi](https://man.archlinux.org/man/wofi.1)

## Preview
![preview](preview.png) 

### Hyprland
```bash
prau -S kitty hyprland waybar swaync nwg-bar nwg-look swaylock-effects \
  cava neofetch qt6ct swww wofi swayidle grim slurp qt5-wayland qt6-wayland \
  polkit-kde-agent xdg-desktop-portal cliphist udiskie sddm-git

```
### Dependences
```bash
  paru -S catppuccin-gtk-theme-macchiato tela-icon-theme-bin
```
### App
```bash
paru -S librewolf-bin brave-bin thunar waydroid mpv koodo-reader-bin kdeconnect \
  linux-wifi-hotspot obs-studio motrix-bin rustdesk-bin
```

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
| SUPER + [1-9]         | toggle workspace |
| SUPER + SHIFT + [1-9] | movetoworkspace  |
| SUPER + mouse:272   | movewindow       |
| SUPER + mouse:273   | resizewindow     |
| SUPER +ESCAPE       | launch nwg-bar   |
| SUPER + SHIFT + S   | screenshot       |
| SUPER + SHIFT + L   | launch swaylock  |
| SUPER + X           | clipboard        |
| SUPER + SHIFT + W   | chang wallpaper  |

