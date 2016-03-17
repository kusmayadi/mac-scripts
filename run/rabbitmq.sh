#!/bin/bash

CMD=$1

case $CMD in
  "start" ) launchctl load /usr/local/opt/rabbitmq/homebrew.mxcl.rabbitmq.plist ;;
  "stop" ) launchctl unload /usr/local/opt/rabbitmq/homebrew.mxcl.rabbitmq.plist ;;
  "restart" )
      launchctl unload /usr/local/opt/rabbitmq/homebrew.mxcl.rabbitmq.plist
      launchctl load /usr/local/opt/rabbitmq/homebrew.mxcl.rabbitmq.plist ;;
  * ) echo "Usage: rabbitmq.sh start | stop | restart"
esac
