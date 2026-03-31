#!/bin/bash
cd /home/thoma/.config/i3
BASE=$(<base) # load base config
HOSTCFG=$(cat $(hostname)) # load host-specific config
CFG="${BASE//#%HOSTCFG/$HOSTCFG}" # sub in host config
echo "$CFG" > config # write subbed config to correct file
