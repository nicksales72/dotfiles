#!/bin/bash

git config --global user.name "nick"
git config --global user.email "nicksales72@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub

sudo dnf copr enable pgdev/ghostty
sudo dnf install -y fastfetch ghostty
sudo dnf update && sudo dnf upgrade
