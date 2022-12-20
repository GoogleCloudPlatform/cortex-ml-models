#!/usr/bin/env bash

# this is just for simplicity since we need to provide a zero status code
# to gitlab and bats keep returning 1 even if all successful
logfile="$1"
rc=$(tail -n1 ${logfile} | awk -F\: '{print $2}')

echo "logfile=$logfile"
echo "rc=$rc"

[ "${rc}" -eq 0 ] && exit 0 || exit 1
