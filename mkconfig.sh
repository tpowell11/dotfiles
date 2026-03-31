#!/bin/bash
cd $1
BASE=$(<base) # load base config
HOSTCFG=$(cat $(hostname)) # load host-specific config
CFG="${BASE//#%HOSTCFG/$HOSTCFG}" # sub in host config
echo "$CFG" > $2 # write subbed config to correct file
echo "built config $2 for $1 using $(hostname)"
