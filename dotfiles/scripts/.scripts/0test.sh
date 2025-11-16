#!/usr/bin/bash 

set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# script here

# maybe add cleanup function
# trap cleanup EXIT # no matter how the program exits, run that cleanup function.
dat=$(date +"%Y-%m-%d-%H-%s")

touch /home/donagh/TESTING/$dat.txt

