#!/bin/bash

CPRE="/home/thoma/.config/"

restore() {
  cp -r $1 $CPRE/$1
}

gencfg() {
  exec $CPRE/$1/mkconfig.sh
}

mkcfg() {
  exec mkconfig.sh $1 $2
}

# Copy files around
restore helix
restore i3
restore i3status
restore btop
restore kitty
restore rofi
restore qutebrowser
restore light
restore kicad

# regenerate configs where needed
mkcfg i3 config
mkcfg i3status i3status
