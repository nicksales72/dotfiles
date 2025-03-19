#!/bin/bash

git config --global user.name "nick"
git config --global user.email "nicksales72@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub

echo "[gemfury-nushell]
name=Gemfury Nushell Repo
baseurl=https://yum.fury.io/nushell/
enabled=1
gpgcheck=0
gpgkey=https://yum.fury.io/nushell/gpg.key" | sudo tee /etc/yum.repos.d/fury-nushell.repo
sudo dnf copr enable pgdev/ghostty
sudo dnf install -y fastfetch ghostty nushell
sudo dnf update && sudo dnf upgrade
