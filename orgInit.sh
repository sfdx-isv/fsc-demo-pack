#!/bin/bash
#initial script for authenticating to devhub, creating scratch org, installing the FSC pckgs and post deploy steps


#pre-req: set up bashprofile, authenticate devhub, clone repo**
#To set up bashprofile [export PATH=$PATH:/Users/vchalem]
#and also enable execution through chmod --file name


#***variables****(will be part of heroku deployer..)
#devhub
devhub=MyDevHubTE00 
#alias of scratch org
alias=FSCADK1
#config file for scratch org
config=config/demo-scratch-def.json
#package versions 
pckg1=04t80000000jZjl
pckg2=04t80000001AWVh

#mdapi-directories
appconfig=mdapi-source/app-config
dataconfig=mdapi-source/data-config
orgconfig=mdapi-source/org-config


echo Scratch Org Creation

sfdx force:org:create -f $config -a $alias -v $devhub -d 14 2> logs/error1.txt

output=$(grep -e"ERROR\b:" logs/error1.txt)
echo $output

if [ -z "$output" ]; then
#no error - continue  

#validate creation.."Successfully created scratch org" (capture username etc..)
#capture output with either $output or $result..
#[capture] eror if -- The signup request failed because this organization has reached its active scratch org limit.
#//echo

echo FSC Package Installation
sfdx force:package:install --package $pckg1 -w 20 -u $alias 2> error2.txt
output=$(grep -e"ERROR\b:" error2.txt)
echo $output

elif [ -z "$output" ]; then #no error - continue 
sfdx force:package:install --package $pckg2 -w 20 -u $alias 2> error3.txt
output=$(grep -e"ERROR\b:" error3.txt)
echo $output

elif [ -z "$output" ]; then 

echo deploying app config
sfdx force:mdapi:deploy --deploydir $appconfig -u $alias 2> error4.txt
output=$(grep -e"ERROR\b:" error4.txt)
echo $output

elif [ -z "$output" ]; then 

echo deploying data config
sfdx force:mdapi:deploy --deploydir $dataconfig -u $alias 2> error5.txt
output=$(grep -e"ERROR\b:" error5.txt)
echo $output

elif [ -z "$output" ]; then 

echo deploying org config
sfdx force:mdapi:deploy --deploydir $orgconfig -u $alias 2> error6.txt
output=$(grep -e"ERROR\b:" error6.txt)
echo $output

elif [ -z "$output" ]; then 

echo sfdx source push
sfdx force:source:push -u $alias 2> error7.txt
output=$(grep -e"ERROR\b:" error7.txt)
echo $output

elif [ -z "$output" ]; then 

echo set user permissions
sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias 2> error 8.txt
output=$(grep -e"ERROR\b:" error8.txt)
echo $output

elif [ -z "$output" ]; then 

echo create demo data 
sfdx force:apex:execute -f config/create-demo-data.apex -u $alias 2> error 9.txt
output=$(grep -e"ERROR\b:" error9.txt)
echo $output

elif [ -z "$output" ]; then 

echo open scratch org
sfdx force:org:open -u $alias 2> error 10.txt
output=$(grep -e"ERROR\b:" error10.txt)
echo $output

elif [ -z "$output" ]; then 
	echo "Success"

else
	echo "Check Error Log"
fi