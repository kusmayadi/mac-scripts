#!/bin/bash

CMD=$1

case $CMD in
  "enable" ) 
    sudo spctl --master-enable
    ;;
  "disable" ) 
    sudo spctl --master-disable
    ;;
  * ) echo "Usage: newapp.sh enable | disable"
    ;;
esac
