#!/usr/sbin/env bash 

set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# script here

# maybe add cleanup function
# trap cleanup EXIT # no matter how the program exits, run that cleanup function.


#for n in  XDG_CACHE_HOME XDG_CONFIG_HOME XDG_DATA_DIRS XDG_RUNTIME_DIR XDG_SEAT_PATH XDG_SESSION_DESKTOP XDG_SESSION_PATH XDG_VTNR XDG_CONFIG_DIRS XDG_CURRENT_DESKTOP  XDG_MENU_PREFIX XDG_SEAT XDG_SESSION_CLASS XDG_SESSION_ID XDG_SESSION_TYPE
#do
    #echo \$$n;
#done



$(echo $XDG_CACHE_HOME)

#echo $XDG_CONFIG_HOME
#echo $XDG_DATA_DIRS
#echo $XDG_RUNTIME_DIR
#echo $XDG_SEAT_PATH
#echo $XDG_SESSION_DESKTOP
#echo $XDG_SESSION_PATH
#echo $XDG_VTNR
#echo $XDG_CONFIG_DIRS
#echo $XDG_CURRENT_DESKTOP
#echo $XDG_MENU_PREFIX
#echo $XDG_SEAT
#echo $XDG_SESSION_CLASS
#echo $XDG_SESSION_ID
#echo $XDG_SESSION_TYPE
