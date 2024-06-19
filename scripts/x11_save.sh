#!/bin/bash
# script to save the X11 configuration to file

# move to directory of this script
cd $(dirname "$( realpath "$0" )")

# check if config exists
if ! [ -a "./config.sh" ]
  then
  echo "x11_autoloader - ERROR - Config file was not found!"
  exit
  fi

# load shared variables
source ./config.sh

# check if DISPLAY env variable is set
# if not, its ok. User just didnt enable X11 on client side
if [ "$DISPLAY" == "" ]
  then
  exit 0
  fi

echo $DISPLAY > $TMP_DIR"/"$USER.display
xauth list | grep "/unix:"$( echo $DISPLAY | cut -d':' -f2 | cut -d'.' -f1 ) > $TMP_DIR"/"$USER.xauth
