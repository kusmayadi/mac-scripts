#!/bin/bash

CMD=$1

case $CMD in
  "start" ) launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist ;;
  "stop" ) launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist ;;
  "restart" )
      launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
      launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist ;;
  * ) echo "Usage: postgresql.sh start | stop"
esac
