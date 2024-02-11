#!/bin/bash
hyprland="$HOME/hyprland-dots" 

# Installing paru
echo "Installing paru"
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Installing Dependencies (arch only)
echo "Installing Dependencies"
paru -S kitty hyprland waybar dust nwg-bar nwg-look swaylock-effects catppuccino-gtk-theme-macchiato \
  tela-icon-theme-bin cava neofetch qt6ct nwg-look swww wofi swayidle grim slurp qt5-wayland qt6-wayland \
  polkit-kde-agent xdg-desktop-portal clipman udiskie sddm-git zsh 

# Installing Apps (arch only)
echo "Installing Apps"
paru -S librewolf-bin brave-bin thunar waydroid mpv koodo-reader-bin kdeconnect linux-wifi-hotspot \
  obs-studio motrix-bin rustdesk-bin

# 创建软链接
echo "Creating symbolic links"
ln -s $hyprland/kitty ~/.config
ln -s $hyprland/nwg-look ~/.config
ln -s $hyprland/scripts ~/.config
ln -s $hyprland/swaync ~/.config
ln -s $hyprland/wofi ~/.config
ln -s $hyprland/cava ~/.config
ln -s $hyprland/neofetch ~/.config
ln -s $hyprland/wallpaper ~/.config 
ln -s $hyprland/xsettingsd ~/.config
ln -s $hyprland/hypr ~/.config
ln -s $hyprland/nwg-bar ~/.config
ln -s $hyprland/qt6ct ~/.config
ln -s $hyprland/swaylock ~/.config
ln -s $hyprland/waybar ~/.config
ln -s $hyprland/setup.sh ~/setup.sh
ln -s $hyprland/.zshrc ~/.zshrc
ln -s $hyprland/.oh-my-zsh ~/.oh-my-zsh

