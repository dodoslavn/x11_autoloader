#!/bin/bash

TMP_DIR=/tmp/x11/
mkdir -p $TMP_DIR

echo $DISPLAY > $TMP_DIR"/"$USER.display

xauth list | grep "/unix:"$( echo $DISPLAY | cut -d':' -f2 | cut -d'.' -f1 ) > $TMP_DIR"/"$USER.xauth

