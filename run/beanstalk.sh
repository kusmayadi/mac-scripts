#!/bin/bash

CMD=$1

case $CMD in
  "start" ) launchctl load /usr/local/opt/beanstalk/homebrew.mxcl.beanstalk.plist ;;
  "stop" ) launchctl unload /usr/local/opt/beanstalk/homebrew.mxcl.beanstalk.plist ;;
  "restart" )
      launchctl unload /usr/local/opt/beanstalk/homebrew.mxcl.beanstalk.plist
      launchctl load /usr/local/opt/beanstalk/homebrew.mxcl.beanstalk.plist ;;
  * ) echo "Usage: beanstalk.sh start | stop | restart"
esac
