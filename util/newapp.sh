#!/bin/bash

CMD=$1

case $CMD in
  "open" ) 
    sudo spctl --master-enable
    ;;
  "lock" ) 
    sudo spctl --master-disable
    ;;
  * ) echo "Usage: newapp.sh open | lock"
    ;;
esac
