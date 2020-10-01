#!/usr/local/bin/bash
# Because you'll probably run this on FreeBSD ;) ^^

if [ `zpool status -x | grep healthy | wc -l` = 1 ]
then
  echo "The zfs pool is healthy"
  exit 0
else
  echo "CRITICAL, zfs pool is unhealthy"
  exit 2
fi
