#!/bin/bash

#Source config file for variables
. ./config/config.sh


errFlag=0

echo $sectionDelimiter

if [ "$markScratchOrgForDeletion" == 1 ]; then
	echo Marking scratch org for deletion
	echo sfdx force:org:delete -u $alias -v $devhub -p
	sfdx force:org:delete -u $alias -v $devhub -p 2> logs/errorScratchOrgDelete.txt
	output=$(grep -i -e"ERROR\b:" logs/errorScratchOrgDelete.txt)
	if [ ! -z "$output" ]; then
		echo Error marking org for deletion
		errFlag=1
	fi
fi

if [ "$errFlag" == 0 ]; then
	echo Creating Scratch Org
	echo sfdx force:org:create -f $config -a $alias -v $devhub -d $scratchOrgDays
	sfdx force:org:create -f $config -a $alias -v $devhub -d $scratchOrgDays 2> logs/errorScratchOrgCreate.txt
	output=$(grep -i -e"ERROR\b:" logs/errorScratchOrgCreate.txt)
	echo $output
	if [ -z "$output" ]; then
		echo Success: Scratch Org Created

		if [ "$defaultAlias" == 1 ]; then
			echo Setting $alias as default
			echo sfdx force:config:set defaultusername=$alias
			sfdx force:config:set defaultusername=$alias 2> logs/errorScratchOrgCreateDefaultUser.txt
			output=$(grep -i -e"ERROR\b:" logs/errorScratchOrgCreateDefaultUser.txt)
			echo $output
			if [ ! -z "$output" ]; then
				echo Error marking org alias as defalt
			fi
		fi
		#No Error
		errFlag=0
	else
		echo Failure: Scratch Org NOT Created
		errFlag=1
	fi
else
	echo Failure: Scratch Org NOT Created
	errFlag=1
fi
echo $sectionDelimiter
