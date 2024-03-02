#!/usr/bin/env bash
hyprland="$HOME/Hyprland-dots" 

# Check if paru is installed
if ! command -v paru &> /dev/null; then
    # paru is not installed, install it
    echo "Installing paru"
    sudo pacman -S --needed base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
else
    echo "paru is already installed, skipping installation."
fi

# Installing Hyprland (arch only)
echo "Installing Hyprland"
paru -S kitty hyprland waybar swaync nwg-bar nwg-look swaylock-effects \
  cava neofetch qt6ct swww wofi swayidle grim slurp qt5-wayland qt6-wayland \
  polkit-kde-agent xdg-desktop-portal clipman udiskie sddm-git zsh 

# Installing Dependencies (arch only)
echo "Installing Dependencies"
paru -S catppuccino-gtk-theme-macchiato tela-icon-theme-bin ttf-font-awesome

# Installing Apps (arch only)
echo "Installing Apps"
paru -S librewolf-bin brave-bin yazi waydroid mpv koodo-reader-bin kdeconnect linux-wifi-hotspot \
  obs-studio motrix-bin rustdesk-bin

# Creating symbolic links
echo "Creating symbolic links"

create_link() {
    source_dir="$1"
    target_dir="$2"

    if [ -e "$target_dir" ]; then
        echo "Target directory $target_dir already exists. Backing up and creating link."

        # Backup existing directory by renaming it with .bk suffix
        mv "$target_dir" "$target_dir.bk"
    fi

    ln -rs "$source_dir" "$target_dir"
    echo "Created symbolic link for $source_dir in $target_dir"
}

create_link "$hyprland/kitty" ~/.config
create_link "$hyprland/yazi" ~/.config
create_link "$hyprland/hypr" ~/.config
create_link "$hyprland/waybar" ~/.config
create_link "$hyprland/wofi" ~/.config
create_link "$hyprland/scripts" ~/.config
create_link "$hyprland/swaync" ~/.config
create_link "$hyprland/cava" ~/.config
create_link "$hyprland/neofetch" ~/.config
create_link "$hyprland/wallpaper" ~/.config
create_link "$hyprland/xsettingsd" ~/.config
create_link "$hyprland/nwg-bar" ~/.config
create_link "$hyprland/nwg-look" ~/.config
create_link "$hyprland/qt6ct" ~/.config
create_link "$hyprland/swaylock" ~/.config
create_link "$hyprland/setup.sh" ~/.config
create_link "$hyprland/xsettingsd" ~/.config
create_link "$hyprland/wallpaper" ~/.config
ln -s "$hyprland/.zshrc" ~/.zshrc
create_link "$hyprland/.oh-my-zsh" ~/.oh-my-zsh
