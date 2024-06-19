#!/bin/bash

TMP_DIR=/tmp/x11/
U=$(logname)

if [ -a "$TMP_DIR"/"$U.display" ] && [ -a $TMP_DIR"/"$U.xauth ]
  then
  export DISPLAY="$(cat $TMP_DIR"/"$U.display)"
  xauth add $(cat $TMP_DIR"/"$U.xauth)
  fi
