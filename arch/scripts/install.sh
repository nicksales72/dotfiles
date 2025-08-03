#!/bin/bash

sudo pacman -S tlp zathura zathura-pdf-mupdf discord rofi ghostty neovim mpv fastfetch sway swaylock swayidle swaybg feh iwd pavucontrol pipewire wireplumber bluez bluez-utils texlive-basic r python-pip xournalpp dosfstools

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S vial-appimage brave-bin 
