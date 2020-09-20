#!/bin/bash
# Nagios Plugin Bash Script - check_dns.sh
# This script checks if program is running
# Check for missing parameters
if [[ -z "$1" ]]
then
        echo "Missing parameters! Syntax: ./check_dns remote dns"
        exit 3
fi

remote=$1
dns=$2

if [ `dig +short $1 @$2 | wc -l` != 0 ]
then
    echo "OK, DNS resolves $1"
    exit 0
else
    echo "CRITICAL, DNS isn't resolving on $2"
    exit 2
fi
