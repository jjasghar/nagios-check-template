#!/bin/bash
# Nagios Plugin Bash Script - check_docker_grep.sh
# This script checks if program is running
# Check for missing parameters
if [[ -z "$1" ]]
then
        echo "Missing parameters! Syntax: ./check_docker_grep.sh service_name"
        exit 3
fi

service=$1

if [ `docker ps | grep -i $service | grep -v grep | wc -l` != 0 ]
then
    echo "OK, $service service is running"
    exit 0
else
    echo "CRITICAL, $service service is not running"
    exit 2
fi