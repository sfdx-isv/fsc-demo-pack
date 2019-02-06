#!/bin/bash

#Source config file for variables
. ./config/config.sh

deploydir="$1"
echo $sectionDelimiter

if [ -z $deploydir ]; then
	echo "Provide Deploy Directory (As param to script) to deploy"
	errFlag=1
else
	echo Deploy Metadata
	echo sfdx force:mdapi:deploy --deploydir $deploydir -w $deployWaitTime -u $alias
	sfdx force:mdapi:deploy --deploydir $deploydir -w $deployWaitTime -u $alias 2> logs/errorMDDeploy.txt
	output=$(grep -e"ERROR\b:" logs/errorMDDeploy.txt)
	echo $output
	if [ -z "$output" ]; then
		echo "Metadata Deploy Success"
		errFlag=0
	else
		echo "Metadata Deploy Faliure"
		errFlag=1
	fi
fi
echo $sectionDelimiter
