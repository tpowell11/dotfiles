#!/bin/bash

CPRE="/home/thoma/.config/"

backup() {
  echo "backing up $CPRE$1"
  cp -r $CPRE$1/ ./
}

backup helix
backup i3
backup i3status
backup btop
backup kitty
backup rofi
backup qutebrowser
backup light
backup kicad
 
