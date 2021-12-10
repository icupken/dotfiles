#!/bin/bash
echo "Install yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
echo "Yay installed."

# ------bspwm install----------
# yay -S polybar ttf-material-design-icons-extended nerd-fonts-jetbrains-mono betterlockscreen zscroll-git --noconfirm
# sudo pacman -S acpi alsa-utils dunst fd nvidia ntfs-3g gvfs bspwm feh picom rofi sxhkd firefox thunar \
#xorg maim xorg-xinit pulseaudio pavucontrol playerctl ttf-iosevka-nerd exa --noconfirm

# ------xfce4 install----------
sudo pacman -S alsa-utils fd nvidia ntfs-3g gvfs rofi sxhkd firefox xorg xorg-xinit pulseaudio ttf-jetbrains-mono \
pavucontrol ttf-iosevka-nerd exa xfce4 xfce4-pulseaudio-plugin xfce4-weather-plugin gtk3 --noconfirm

yay -S ttf-material-design-icons-extended nerd-fonts-jetbrains-mono deezer --noconfirm

cp -r .config ~/
cp  .Xresources ~/
mkdir -p ~/.local/share/
cp -r fonts ~/.local/share/
cp .xinitrc ~/
cp .bashrc ~/
git clone https://github.com/siduck/st.git
cd st
sudo make install
echo "Instalation end."
