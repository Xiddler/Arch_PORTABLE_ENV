#!/usr/sbin/env bash 

# 2025-11-30
#
# This file backs up my zim-wiki folders from the LenManjaro $HOME/ZIM_WIKI to the samba share located at /mnt/anon shared to the Toshiba samba share "anonymous"




set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# script here

# maybe add cleanup function
# trap cleanup EXIT # no matter how the program exits, run that cleanup function.

# source_zim="/home/donagh/ZIM_WIKI/"
# dest_zim="/mnt/anon/ZIM_WIKI_from_LenManj/ZIM_WIKI/"



# sudo -S <<< 1234 rsync -a --delete ~/DONAGHS/MY_ZIM/ORG ~/BACKUPS/RSYNCED/zim_ORG
# sudo -S <<< 1234 rsync -a --exclude '/home/donagh/ZIM_WIKI/Computer/.git/' --delete $source_zim 


# sudo <<< 1234 cp -r $source_zim $dest_zim
# this sends to ~/samba/anonymous_shared_directory/ZIM_WIKI_from_LenManj/ZIM_WIKI/ZIM_WIKI/Computer
#

# for testing
# source_zim_folder="/home/donagh/ZIM_WIKI/Computer/00Home/0_ScratchPad"
source_zim_folder="/home/donagh/ZIM_WIKI/Computer"
source_zim_file="/home/donagh/ZIM_WIKI/Computer.txt"
                                                 
dest_zim_folder="/mnt/anon/ZIM_WIKI_from_LenManj"
dest_zim_file="/mnt/anon/ZIM_WIKI_from_LenManj/"

sudo -S <<< 1234 rsync -a --exclude '/home/donagh/ZIM_WIKI/Computer/.git' --delete $source_zim_folder  $dest_zim_folder
sudo -S <<< 1234 rsync -a --exclude '/home/donagh/ZIM_WIKI/Computer/.git' --delete $source_zim_file  $dest_zim_file

echo "zim rsync done   --- zim_backup_to_Toshiba.sh on $(date)"
