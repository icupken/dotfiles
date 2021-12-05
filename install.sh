#!/bin/bash
echo "Install yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay
echo "Yay installed."
yay -S polybar ttf-material-design-icons-extended nerd-fonts-jetbrains-mono betterlockscreen zscroll-git --noconfirm
sudo pacman -S acpi alsa-utils dunst fd nvidia bspwm feh picom rofi sxhkd firefox thunar xorg maim xorg-xinit pulseaudio pavucontrol playerctl ttf-iosevka-nerd exa --noconfirm
cp -r .config ~/
cp  .Xresources ~/
mkdir -p ~/.local/share/
cp -r fonts ~/.local/share/
cp .xinitrc ~/
cp .bashrc ~/
echo "Instalation end."
