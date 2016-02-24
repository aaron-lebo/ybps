#! /bin/bash

command="$1"; shift
if [ $command = "upgrade" ]; then
  xbps-install -Syu 
elif [ $command = "search" ]; then
  xbps-query -Rs "$@" 
else
  xbps-$command "$@"
fi
