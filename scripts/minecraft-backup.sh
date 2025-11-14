!/bin/bash

SRC="$HOME/minecraft-server/world"

DST="/seagate/world"

rsync -av --delete "$SRC/" "$DST/"

