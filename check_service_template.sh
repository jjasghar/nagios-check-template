#!/bin/bash
# Nagios Plugin Bash Script - check_service.sh
# This script checks if program is running
# Check for missing parameters
if [[ -z "$1" ]]
then
        echo "Missing parameters! Syntax: ./check_service.sh service_name"
        exit 3
fi

service=$1

if pgrep -x $service > /dev/null
then
    echo "OK, $service service is running"
    exit 0
else
    echo "CRITICAL, $service service is not running"
    exit 2
fi
