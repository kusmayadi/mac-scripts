#!/bin/bash

CMD=$1

case $CMD in
  "start" ) launchctl load /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist ;;
  "stop" ) launchctl unload /usr/loca/opt/mongodb/homebrew.mxcl.mongodb.plist ;;
  "restart" ) 
      launchctl unload /usr/loca/opt/mongodb/homebrew.mxcl.mongodb.plist
      launchctl load /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist ;;
  * ) echo "Usage: mongo.sh start | stop | restart"
esac
