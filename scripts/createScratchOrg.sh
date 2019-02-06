#!/bin/bash

#Source config file for variables
. ./config/config.sh


errFlag=0

echo $sectionDelimiter

if [ "$markScratchOrgForDeletion" == 1 ]; then
	echo Marking scratch org for deletion
	echo sfdx force:org:delete -u $alias -v $devhub -p
	sfdx force:org:delete -u $alias -v $devhub -p 2> logs/errorScratchOrgDelete.txt
	output=$(grep -e"ERROR\b:" logs/errorScratchOrgDelete.txt)
	if [ ! -z "$output" ]; then
		echo Error marking org for deletion
	fi
fi
echo Creating Scratch Org
echo sfdx force:org:create -f $config -a $alias -v $devhub -d $scratchOrgDays
sfdx force:org:create -f $config -a $alias -v $devhub -d $scratchOrgDays 2> logs/errorScratchOrgCreate.txt
output=$(grep -e"ERROR\b:" logs/errorScratchOrgCreate.txt)
echo $output
if [ -z "$output" ]; then
	echo Success: Scratch Org Created
	#No Error
	errFlag=0
else
	echo Failure: Scratch Org NOT Created
	errFlag=1
fi
echo $sectionDelimiter
