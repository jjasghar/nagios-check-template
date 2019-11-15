#!/bin/bash
# Nagios Plugin Bash Script - check_service.sh
# This script checks if program is running
# Check for missing parameters
if [[ -z "$1" ]]
then
        echo "Missing parameters! Syntax: ./check_service.sh service_name"
        exit 3
fi
if ps ax | grep -v grep | grep $1 > /dev/null
then
    echo "OK, $SERVICE service is running"
        exit 0
else
    echo "CRITICAL , $SERVICE service is not running"
        exit 2
fi
