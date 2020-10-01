#!/bin/bash
# This script checks if program is running via grep
# Check for missing parameters
if [[ -z "$1" ]]
then
        echo "Missing parameters! Syntax: ./check_service_grep.sh service_name"
        exit 3
fi

service=$1

if [ `ps waux | grep -i $service | grep -v grep | wc -l` != 0 ]
then
    echo "OK, $service service is running"
    exit 0
else
    echo "CRITICAL, $service service is not running"
    exit 2
fi
