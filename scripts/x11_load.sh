#!/bin/bash
# script to load variables for X11 forwarding from files

# move to directory of this script
cd $(dirname "$( realpath "${BASH_SOURCE[0]}" )")

# check if config exists
if ! [ -a "./config.sh" ]
  then
  echo "x11_autoloader - ERROR - Config file was not found!"
  fi

# load shared variables
source ./config.sh

# username you used when you initially logged into SSH
U=$(logname)

# if both files exist, set the environment
if [ -a "$TMP_DIR"/"$U.display" ] && [ -a $TMP_DIR"/"$U.xauth ]
  then
  export DISPLAY="$(cat $TMP_DIR"/"$U.display)"
  xauth add $(cat $TMP_DIR"/"$U.xauth)
  fi

# move back to home directory //probably
cd - >/dev/null
