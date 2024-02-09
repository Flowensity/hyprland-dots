#!/bin/bash
hyprland='$HOME/hyprland-dots'

# Installing paru
echo "Installing paru"
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Installing Dependencies(arch only)
echo "Installing Dependencies"
prau -S kitty hyprland waybar dust nwg-bar nwg-look swaylock-effects catppuccin-gtk-theme-macchiato \
  tela-icon-theme-bin cava neofetch qt5ct nwg-look swww wofi swayidle grim slurp qt5-wayland qt6-wayland \
  polkit-kde-agent xdg-desktop-portal cliphist udiskie sddm-git zsh


# Installing Apps(arch only)
echo "Installing Apps"
paru -S librewolf-bin brave-bin thunar waydroid mpv koodo-reader-bin kdeconnect linux-wifi-hotspot \
  obs-studio motrix-bin rustdesk-bin

ln -s $HOME/hyprland/kitty ~/.config
ln -s $HOME/hyprland/nwg-look ~/.config
ln -s $HOME/hyprland/scripts ~/.config
ln -s $HOME/hyprland/swaync ~/.config
ln -s $HOME/hyprland/wofi ~/.config
ln -s $HOME/hyprland/cava ~/.config
ln -s $HOME/hyprland/neofetch ~/.config
ln -s $HOME/hyprland/wallpoaper ~/.config
ln -s $HOME/hyprland/xsettingsd ~/.config
ln -s $HOME/hyprland/hypr ~/.config
ln -s $HOME/hyprland/nwg-bar ~/.config
ln -s $HOME/hyprland/qt6ct ~/.config
ln -s $HOME/hyprland/swaylock ~/.config
ln -s $HOME/hyprland/waybar ~/.config
ln -s $HOME/hyprland/setup.sh ~/setup.sh
ln -s $HOME/hyprland/.zshrc ~/.zshrc
ln -s $HOME/hyprland/.oh-my-zsh ~/.oh-my-zsh
