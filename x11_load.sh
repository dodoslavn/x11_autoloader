#!/bin/bash

TMP_DIR=/tmp/x11/
U=$(logname)

export DISPLAY="$(cat $TMP_DIR"/"$U.display)"
xauth add $(cat $TMP_DIR"/"$U.xauth)

