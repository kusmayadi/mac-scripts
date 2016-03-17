#!/bin/bash

CMD=$1

case $CMD in
  "on" ) sudo mdutil -a -i on;;
  "off" ) sudo mdutil -a -i off;;
  * ) echo "Usage: spotlight.sh on | off"
esac
