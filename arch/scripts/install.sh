#!/bin/bash

sudo pacman -S tlp zathura zathura-pdf-mupdf discord rofi ghostty mpv fastfetch feh pavucontrol texlive-basic r python-pip dosfstools hyprland hyprlock hypridle hyprpaper waybar nodejs wl-clipboard fish openssh wireless_tools 

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S vial-appimage brave-bin visual-studio-code-bin
