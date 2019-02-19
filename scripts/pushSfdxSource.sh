#!/bin/bash

#Source config file for variables
. ./config/config.sh

echo $sectionDelimiter


echo Push SFDX Source Code
echo sfdx force:source:push -u $alias
sfdx force:source:push -f -u $alias 2> logs/errorPushSfdxSource.txt
output=$(grep -i -e"ERROR\b:" logs/errorPushSfdxSource.txt)
echo $output
if [ -z "$output" ]; then
	echo "SFDX Source Push Success"
	errFlag=0
else
	echo "SFDX Source Push Failure"
	errFlag=1
fi

echo $sectionDelimiter
