# !/bin/bash
# this is a entry scprit
User=`whoami`
PaPath=`cat /home/$User/.pa-nemu/do_not_touch_me`
GitMonitorPath=$PaPath/scripts/gitmonitor.sh

bash $GitMonitorPath $PaPath

# excute keyboard monitor
