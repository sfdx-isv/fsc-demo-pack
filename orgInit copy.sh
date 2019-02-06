#!/bin/bash
#initial script for authenticating to devhub, creating scratch org, installing the FSC pckgs and post deploy steps


#pre-req: set up bashprofile, authenticate devhub, clone repo**
#To set up bashprofile [export PATH=$PATH:/Users/vchalem]
#and also enable execution through chmod --file name


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


echo Scratch Org Creation

sfdx force:org:create -f $config -a $alias -v $devhub -d 14 2> logs/error1.txt

output=$(grep -e"ERROR\b:" logs/error1.txt)
echo $output

if [ -z "$output" && $errFlag -eq 0 ]; then
	#no error - continue  

	#validate creation.."Successfully created scratch org" (capture username etc..)
	#capture output with either $output or $result..
	#[capture] eror if -- The signup request failed because this organization has reached its active scratch org limit.
	#//echo

	echo FSC Package Installation: $pckg1, $pckg2
	sfdx force:package:install --package $pckg1 -w 20 -u $alias 2> logs/error2.txt
	output=$(grep -e"ERROR\b:" logs/error2.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output" && $errFlag -eq 0 ]; then #no error - continue 
	sfdx force:package:install --package $pckg2 -w 20 -u $alias 2> logs/error3.txt
	output=$(grep -e"ERROR\b:" logs/error3.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output" && $errFlag -eq 0 ]; then 
	echo deploying app config
	sfdx force:mdapi:deploy --deploydir $appconfig -u $alias 2> logs/error4.txt
	output=$(grep -e"ERROR\b:" logs/error4.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output"  && $errFlag -eq 0 ]; then 
	echo deploying data config
	sfdx force:mdapi:deploy --deploydir $dataconfig -u $alias 2> logs/error5.txt
	output=$(grep -e"ERROR\b:" logs/error5.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output"  && $errFlag -eq 0 ]; then 
	echo deploying org config
	sfdx force:mdapi:deploy --deploydir $orgconfig -u $alias 2> logs/error6.txt
	output=$(grep -e"ERROR\b:" logs/error6.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output"  && $errFlag -eq 0 ]; then 
	echo sfdx source push
	sfdx force:source:push -u $alias 2> logs/error7.txt
	output=$(grep -e"ERROR\b:" logs/error7.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output"  && $errFlag -eq 0 ]; then 
	echo set user permissions
	sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias 2> logs/error8.txt
	output=$(grep -e"ERROR\b:" logs/error8.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output"  && $errFlag -eq 0 ]; then 
	echo create demo data 
	sfdx force:apex:execute -f config/create-demo-data.apex -u $alias 2> logs/error9.txt
	output=$(grep -e"ERROR\b:" logs/error9.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ -z "$output"  && $errFlag -eq 0 ]; then 
	echo open scratch org
	sfdx force:org:open -u $alias 2> logs/error10.txt
	output=$(grep -e"ERROR\b:" logs/error10.txt)
	echo $output
	errFlag=0
else
	errFlag=1
fi

if [ $errFlag -eq 0 ]; then 
	echo "Success"
else
	echo "Check Error Log"
fi