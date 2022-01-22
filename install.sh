#!/bin/bash
echo "Install yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
echo "Yay installed."

# ------xfwm4 install----------
sudo pacman -S alsa-utils fd feh alacritty nvidia f2fs-tools ntfs-3g thunar gvfs \
rofi firefox xorg xorg-xinit pulseaudio ttf-jetbrains-mono sxhkd hunspell-ru \
pavucontrol ttf-iosevka-nerd exa xfwm4 picom dunst okular neovim flameshot playerctl --noconfirm

yay -S polybar ttf-material-design-icons-extended nerd-fonts-jetbrains-mono betterlockscreen zscroll-git --noconfirm

cp -r .config ~/
cp  .Xresources ~/
mkdir -p ~/.local/share/
cp -r fonts ~/.local/share/
cp .xinitrc ~/
cp .bashrc ~/
mkdir ~/Screenshots
localectl --no-convert set-x11-keymap us,ru "" "" grp:alt_shift_toggle
echo "Instalation end."
