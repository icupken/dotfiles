#!/bin/bash
echo "Install yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
echo "Yay installed."

# ------xfce4 install----------
sudo pacman -S alsa-utils fd feh maim nvidia ntfs-3g thunar discord gvfs rofi sxhkd firefox xorg xorg-xinit pulseaudio ttf-jetbrains-mono \
pavucontrol ttf-iosevka-nerd exa xfwm4 picom dunst --noconfirm
yay -S ttf-material-design-icons-extended nerd-fonts-jetbrains-mono deezer betterlockscreen --noconfirm

cp -r .config ~/
cp  .Xresources ~/
mkdir -p ~/.local/share/
cp -r fonts ~/.local/share/
cp .xinitrc ~/
cp .bashrc ~/
git clone https://github.com/siduck/st.git
cd st
sudo make install
mkdir Screenshots ~/
echo "Instalation end."
