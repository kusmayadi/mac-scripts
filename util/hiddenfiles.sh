#!/bin/bash

CMD=$1

case $CMD in
  "show" ) 
      defaults write com.apple.Finder AppleShowAllFiles YES 
      killall -KILL Finder ;;
  "hide" ) 
      defaults write com.apple.Finder AppleShowAllFiles NO
      killall -KILL Finder ;;
  * ) echo "Usage: hiddenfiles.sh show | hide"
esac
