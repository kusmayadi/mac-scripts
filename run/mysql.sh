#!/bin/bash

CMD=$1

case $CMD in
  "start" ) launchctl load /usr/local/opt/mysql/homebrew.mxcl.mysql.plist ;;
  "stop" ) launchctl unload /usr/local/opt/mysql/homebrew.mxcl.mysql.plist ;;
  "restart" )
      launchctl unload /usr/local/opt/mysql/homebrew.mxcl.mysql.plist
      launchctl load /usr/local/opt/mysql/homebrew.mxcl.mysql.plist ;;
  * ) echo "Usage: mysql.sh start | stop"
esac
