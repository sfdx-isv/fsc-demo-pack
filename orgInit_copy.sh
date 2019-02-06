#!/bin/bash
#initial script for authenticating to devhub, creating scratch org, installing the FSC pckgs and post deploy steps

#Decide which steps to run
#Create Scratch Org
createScratchOrg=1
#Install package
installPkgs=1
#Deploy metadata
deployConfig=1
#Use sfdx force:source:push
pushSfdxSource=1
#Delete files in logs folder when done
keepLogs=1
#Create demo data
createDemoData=1

#***variables****(will be part of heroku deployer..)
#devhub
devhub=MyDevHubTE
#alias of scratch org
alias=FSCADK1
#config file for scratch org
config=config/demo-scratch-def.json
#package versions 
pckg1=04t80000000jZjl
pckg2=04t80000001AWVh

errFlag=0

#mdapi-directories
appconfig=mdapi-source/app-config
dataconfig=mdapi-source/data-config
orgconfig=mdapi-source/org-config



if [ $createScratchOrg -eq 1 ]; then
	echo Creating Scratch Org
	echo sfdx force:org:create -f $config -a $alias -v $devhub -d 14
	sfdx force:org:create -f $config -a $alias -v $devhub -d 14 2> logs/error1.txt

	output=$(grep -e"ERROR\b:" logs/error1.txt)
	echo $output
	if [ -z "$output" ]; then
		#No Error
		errFlag=0
	else
		errFlag=1
	fi
fi

if [ "$installPkgs" -eq "1" -a "$errFlag" -eq "0" ]; then
	#no error - continue  

	#validate creation.."Successfully created scratch org" (capture username etc..)
	#capture output with either $output or $result..
	#[capture] eror if -- The signup request failed because this organization has reached its active scratch org limit.
	#//echo

	echo Installing Package
	echo sfdx force:package:install --package $pckg1 -w 20 -u $alias
	sfdx force:package:install --package $pckg1 -w 20 -u $alias 2> logs/error2.txt
	output=$(grep -e"ERROR\b:" logs/error2.txt)
	echo $output
	if [ -z "$output" ]; then
		#No Error
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $installPkgs -eq 1 -a $errFlag -eq 0 ]; then #no error - continue 
	echo Installing Package
	echo sfdx force:package:install --package $pckg2 -w 20 -u $alias
	sfdx force:package:install --package $pckg2 -w 20 -u $alias 2> logs/error3.txt
	output=$(grep -e"ERROR\b:" logs/error3.txt)
	echo $output
	if [ -z "$output" ]; then
		#No Error
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo Deploy Metadata
	echo sfdx force:mdapi:deploy --deploydir $appconfig -w 5 -u $alias
	sfdx force:mdapi:deploy --deploydir $appconfig -w 5 -u $alias 2> logs/error4.txt
	output=$(grep -e"ERROR\b:" logs/error4.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo Deploy Metadata
	echo sfdx force:mdapi:deploy --deploydir $dataconfig -w 5 -u $alias
	sfdx force:mdapi:deploy --deploydir $dataconfig -w 5 -u $alias 2> logs/error5.txt
	output=$(grep -e"ERROR\b:" logs/error5.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo Deploy Metadata
	echo sfdx force:mdapi:deploy --deploydir $orgconfig -w 5 -u $alias
	sfdx force:mdapi:deploy --deploydir $orgconfig -w 5 -u $alias 2> logs/error6.txt
	output=$(grep -e"ERROR\b:" logs/error6.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo Push SFDX Source Code
	echo sfdx force:source:push -u $alias
	sfdx force:source:push -u $alias 2> logs/error7.txt
	output=$(grep -e"ERROR\b:" logs/error7.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo Assign Permission Set
	echo sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias
	sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias 2> logs/error8.txt
	output=$(grep -e"ERROR\b:" logs/error8.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $createDemoData -eq 1 -a $errFlag -eq 0 ]; then 
	echo Generate Demo Data
	echo sfdx force:apex:execute -f config/create-demo-data.apex -u $alias
	sfdx force:apex:execute -f config/create-demo-data.apex -u $alias 2> logs/error9.txt
	output=$(grep -e"ERROR\b:" logs/error9.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo open scratch org
	echo sfdx force:org:open -u $alias
	sfdx force:org:open -u $alias 2> logs/error10.txt
	output=$(grep -e"ERROR\b:" logs/error10.txt)
	echo $output
	if [ -z "$output" ]; then
		errFlag=0
	fi
else
	errFlag=1
fi

if [ $keepLogs -eq 0 ]; then
	echo Deleting log files
	echo rm logs/*
	rm logs/*
fi

if [ $errFlag -eq 0 ]; then 
	echo "Success"
else
	echo "Check Error Log"
fi