#!/bin/bash

sudo pacman -S tlp zathura zathura-pdf-mupdf discord rofi ghostty gvim mpv fastfetch sway swaylock swayidle swaybg feh iwd pavucontrol pipewire wireplumber bluez bluez-utils code texlive-basic R python-pip

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S vial-appimage brave-bin 
