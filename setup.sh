#!/bin/bash

git config --global user.name "nicksales72"
git config --global user.email "nicksales72@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false

git config --get user.name
git config --get user.email

ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub

sudo apt update && sudo apt upgrade
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"
