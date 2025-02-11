#!/bin/bash

ssh-keygen -t ed25519 -C "nicksales72@gmail.com"
cat ~/.ssh/id_ed25519.pub

git config --global user.name "nicksales72"
git config --global user.email "nicksales72@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false

sudo dnf remove kontact dolphin kwrite akregator ark dragon elisa-player filelight gwenview kaddressbook kamoso kcalc kde-connect kde-partitionmanager kdebugsettings kcharselect kfind kgpg kmail kmines neochat okular pim-data-exporter skanpage kmouth kolourpaint korganizer krdc kwalletmanager5 krfb krdp
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf copr enable g3tchoo/prismlauncher
sudo dnf update && sudo dnf upgrade
sudo dnf install git clang vim-enhanced vlc cmake nodejs R fastfetch wl-clipboard tmux haskell-platform zathura discord prismlauncher texlive-scheme-full

