#!/bin/bash
#initial script for authenticating to devhub, creating scratch org, installing the FSC pckgs and post deploy steps

#Decide which steps to run
#Create Scratch Org
createScratchOrg=1
#Install package
installPkgs=1
#Deploy metadata
deployMetadata=1
#Use sfdx force:source:push
pushSfdxSource=1
#Use sfdx force:user:permset:assign
assignPermissionSet=1
#Create demo data
createDemoData=1
#Delete files in logs folder when done
keepLogs=1

errFlag=0

. ./config/config.sh

if [ "$createScratchOrg" -eq "1" ]; then
	. ./scripts/createScratchOrg.sh
fi

if [ "$installPkgs" == 1 ] && [ "$errFlag" == 0 ]; then
	. ./scripts/installPackage.sh $pkg1
fi

if [ "$installPkgs" == 1 ] && [ "$errFlag" == 0 ]; then
	. ./scripts/installPackage.sh $pkg2
fi

if [ "$deployMetadata" == 1 ] && [ "$errFlag" -eq 0 ]; then 
	. ./scripts/deployMetadata.sh $appconfig
fi
if [ "$deployMetadata" == 1 ] && [ "$errFlag" -eq 0 ]; then 
	. ./scripts/deployMetadata.sh $dataconfig
fi
if [ "$deployMetadata" == 1 ] && [ "$errFlag" -eq 0 ]; then 
	. ./scripts/deployMetadata.sh $orgconfig
fi

if [ "$pushSfdxSource" == 1 ] && [ "$errFlag" -eq 0 ]; then 
	. ./scripts/pushSfdxSource.sh
fi


if [ "$assignPermissionSet" == 1 ] && [ "$errFlag" -eq 0 ]; then 
	echo $sectionDelimiter

	echo Assign Permission Set
	echo sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias
	sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias &> logs/errorPermSetAssign.txt
	output=$(grep -i -e"ERROR\b:" logs/errorPermSetAssign.txt)
	echo $output
	if [ -z "$output" ]; then
		output=$(grep -i -e"Duplicate PermissionSetAssignment" logs/errorPermSetAssign.txt)
		echo $output
		if [ -z "$output" ]; then
			output=$(grep -i -e"Failures" logs/errorPermSetAssign.txt)
			echo $output
			if [ -z "$output" ]; then
				errFlag=0
			else
				errFlag=1
			fi
		else
			cat logs/errorPermSetAssign.txt
			echo "Permission Set already assigned"
		fi
	else
		errFlag=1
	fi
	cat logs/errorPermSetAssign.txt
	echo $sectionDelimiter
fi

if [ "$createDemoData" == 1 ] && [ "$errFlag" -eq 0 ]; then
	echo $sectionDelimiter

	echo Generate Demo Data
	echo sfdx force:apex:execute -f config/create-demo-data-setup.apex -u $alias
	sfdx force:apex:execute -f config/create-demo-data-setup.apex -u $alias 2> logs/errorDemoDataLoadSetup.txt
	output=$(grep -i -e"ERROR\b:" logs/errorDemoDataLoadSetup.txt)
	echo $output
	if [ -z "$output" ]; then
		echo Demo Data Setup Completed
		errFlag=0
	else
		echo Error while setting up for demo data
		errFlag=1
	fi
	echo $sectionDelimiter
fi

if [ "$createDemoData" == 1 ] && [ "$errFlag" -eq 0 ]; then
	echo $sectionDelimiter

	echo Generate Demo Data
	echo sfdx force:apex:execute -f config/create-demo-data.apex -u $alias
	sfdx force:apex:execute -f config/create-demo-data.apex -u $alias 2> logs/errorDemoDataLoad.txt
	output=$(grep -i -e"ERROR\b:" logs/errorDemoDataLoad.txt)
	echo $output
	if [ -z "$output" ]; then
		echo Demo Data Loaded
		errFlag=0
	else
		echo Error while loading demo data
		errFlag=1
	fi
	echo $sectionDelimiter
fi

if [ $errFlag -eq 0 ]; then 
	echo $sectionDelimiter
	echo open scratch org
	echo sfdx force:org:open -u $alias
	sfdx force:org:open -u $alias 2> logs/errorOrgOpen.txt
	output=$(grep -i -e"ERROR\b:" logs/errorOrgOpen.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
	echo $sectionDelimiter
fi

if [ $keepLogs -eq 0 ]; then
	echo Deleting log files
	echo rm logs/*
	rm logs/*
fi


if [ "$errFlag" == 0 ]; then
	echo "Finished"
else
	echo "Check Error Log"
fi