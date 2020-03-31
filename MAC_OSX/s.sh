#!/bin/bash
#PROP_VALUE="${!1}"
#echo "start check & install $1"
#echo "${PROP_VALUE}"
#echo $(date +%Y%m%d-%H%M%S)
open -n -a  /Applications/VLC.app/ --args https://video-ws2.lv-play.com/live/$1Y.flv --sout "#file{dst=/Users/neo/Documents/wait_sync/$1_s_mac_$(date +%Y%m%d-%H%M%S).mp4,no-overwrite}" --tcp-caching=10000  --sout-keep


