#!/bin/env bash

# This is to manage my git repos on the laptop efficiently.
# Only ~/PORTABLE_ENV is linked to github

# List of my git repos on the laptop

# set -euo pipefail

# turn on debuggin -x; turn off debuggin +x
# set -x

g_poe="$HOME/Arch_PORTABLE_ENV/"             # On github

# g_org="$HOME/Dropbox/org-mode/org/"       # this tracks my .org files
#g_pers="$HOME/DONAGHS/personal/"
# g_comp="$HOME/DONAGHS/MY_ZIM/Computer/"   # zim/Computer only # NOTE: 2023-10-06 MY_ZIM handled on Windows 11 currently
# g_all_org="$HOME/DONAGHS/all_org/"        # this only tracks doom-notes.org
g_comp="$HOME/ZIM_WIKI/Computer"

# directories=( $g_poe $g_org $g_pers $g_comp )
##############################################

echo "##############################################"
echo " "
echo "edit ~/.scripts/manage_all_git_repos.sh" 
echo " "
# echo "##############################################"

directories=( $g_poe $g_comp )
for mydir in "${directories[@]}"; 
    do 
        # echo -e "$mydir";
        # printf '%s\n ' "$mydir"
       echo "##############################################"
       echo " "
       echo -e "$mydir" && cd "$mydir" && git status # | tail -n 8
       echo " "
       # cd "$mydir" && git add -A # | tail -n 8
done


echo "##############################################"
echo " "
echo "ZIM_WIKI/Computer on LenManjaro from Nov 2025"
echo "MY_ZIM WAS handled on Windows 11 from July 2023 to July 2025"

