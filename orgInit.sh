#!/bin/bash
#initial script for authenticating to devhub, creating scratch org, installing the FSC pckgs and post deploy steps


#pre-req: set up bashprofile, authenticate devhub, clone repo**
#To set up bashprofile [export PATH=$PATH:/Users/vchalem]
#and also enable execution through chmod --file name


#***variables****(will be part of heroku deployer..)
#devhub
devhub=my-hub-org 
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


echo Welcome! Please make sure you have the Salesforce CLI installed. Please authenticate to your DevHub

#spin up new scratch org w/ config 
sfdx force:org:create -f $config -a $alias -v $devhub

#validate creation.."Successfully created scratch org" (capture username etc..)
#capture output with either $output or $result..
#[capture] eror if -- The signup request failed because this organization has reached its active scratch org limit.
#//echo

#install FSC packages 

sfdx force:package:install --package $pckg1 -w 20 -u $alias
sfdx force:package:install --package $pckg2 -w 20 -u $alias

#validate/echo pckg install successful

#deploy mdapi config
sfdx force:mdapi:deploy --deploydir $appconfig -u $alias
#validate/echo

sfdx force:mdapi:deploy --deploydir $dataconfig -u $alias
#validate/echo

sfdx force:mdapi:deploy --deploydir $orgconfig -u $alias
#validate/echo

sfdx force:source:push -u $alias
#(for now none here..) validate/echo 

#config users - perms, etc
sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u $alias
#assume user running this should be getting this perm set? 
#validate/echo


#run apex anonymous to create demo data
sfdx force:apex:execute -f config/create-demo-data.apex -u $alias
#validate/echo 

sfdx force:org:open -u $alias


