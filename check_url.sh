#!/bin/bash
# This script checks if URL comes back with a 200
# Check for missing parameters
if [[ -z "$1" ]]
then
        echo "Missing parameters! Syntax: ./check_url <url>"
        exit 3
fi

url=$1
code=$(curl --write-out '%{http_code}' --silent --output /dev/null $url)
if [ $code -eq '200' ]
then
    echo "OK, $url is a 200"
    exit 0
else
    echo "CRITICAL, $url isn't there"
    exit 2
fi
