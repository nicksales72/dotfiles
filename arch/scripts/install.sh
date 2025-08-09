#!/bin/bash

sudo pacman -S tlp zathura zathura-pdf-mupdf discord rofi ghostty neovim mpv fastfetch feh pavucontrol texlive-basic r python-pip xournalpp dosfstools hyprland hyprlock hypridle hyprpaper waybar nodejs wl-clipboard fish openssh wireless_tools 

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S vial-appimage brave-bin 
