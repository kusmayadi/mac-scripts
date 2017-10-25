#!/bin/bash

CMD=$1

case $CMD in
  "lock" ) 
    sudo spctl --master-enable
    ;;
  "open" ) 
    sudo spctl --master-disable
    ;;
  * ) echo "Usage: newapp.sh open | lock"
    ;;
esac
