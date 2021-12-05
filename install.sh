#!/bin/bash
echo "Install yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
echo "Yay installed."
yay -S polybar ttf-material-design-icons-extended nerd-fonts-jetbrains-mono betterlockscreen zscroll-git --noconfirm
pacman -S acpi alsa-utils dunst fd nvidia bspwm feh picom rofi sxhkd firefox thunar xorg maim xorg-xinit pulseaudio pavucontrol playerctl ttf-iosevka-nerd exa --noconfirm
cp -r .config ~/
cp  .Xresources ~/
mkdir -p ~/.local/share/fonts
cp -r fonts ~/.local/share/fonts
cp .xinitrc ~/
cp .bashrc ~/
echo "Instalation end."
