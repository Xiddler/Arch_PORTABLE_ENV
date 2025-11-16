#!/usr/sbin/env bash 

# NOTE: This replaces the Task previously done on Win 11
# cronjob
# 55 18 *** /home/donagh/.scripts/MY_ZIM_backup.sh

set -eEuo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# mydate=$(date +"%Y-%m-%d")
# echo $mydate

# source='/home/donagh/DONAGHS/personal/'
base='/home/donagh/Notebooks'
source_dir="$base/MY_ZIM"

destination_dir='/mnt/samba_share/MY_ZIM/RSYNCED'
# echo $destination_dir

# original
# rsync -a --exclude '/home/donagh/DONAGHS/personal/zArchive' --exclude '/home/donagh/DONAGHS/personal/.git/' --delete /home/donagh/DONAGHS/personal/ /home/donagh/BACKUPS/RSYNCED/personal/

# Maybe TRY these
# sudo -S <<< 1234 rsync -a --cvs-exclude  --exclude='$dotgit' --delete $source_dir $destination_dir
# sudo -S <<< 1234 rsync -a --cvs-exclude  --exclude='/.git/' --delete $source_dir $destination_dir

# THIS WORKED 
sudo -S <<< 1234 rsync -a --delete --exclude='.git/' $source_dir $destination_dir


