#!/bin/bash

CMD=$1

case $CMD in
  "start" ) launchctl load /usr/local/opt/redis/homebrew.mxcl.redis.plist ;;
  "stop" ) launchctl unload /usr/local/opt/redis/homebrew.mxcl.redis.plist ;;
  "restart" ) 
      launchctl unload /usr/local/opt/redis/homebrew.mxcl.redis.plist
      launchctl load /usr/local/opt/redis/homebrew.mxcl.redis.plist ;;
  * ) echo "Usage: redish.sh start | stop | restart"
esac
