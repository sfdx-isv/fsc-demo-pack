#!/bin/bash

#create scratch org
sfdx force:org:create -f config/project-scratch-def.json -a FSCADK --setdefaultusername -d 7

#pckg installs
sfdx force:package:install --package 04t1E000000cmtN -w 20 
#FSC Extn
#Has all fieldsets for Lightning pages like Financial Account tab on Account
sfdx force:package:install --package 04t1E000001Iql5 -w 20
#FSC Extn Commercial Banking* 
#Requires more dashboards
#sfdx force:package:install --package 04t80000000lTrZ -w 20
#FSC Extn Retail Banking
#sfdx force:package:install --package 04t80000000lTp4 -w 20
#FSC Einstein Bots
#sfdx force:package:install --package 04t80000000lTqH -w 20
#FSC Lightning Flow Templates
#sfdx force:package:install --package 04t3i000000jP1g -w 20



#sfdx force:mdapi:deploy --deploydir mdapi-source/app-config

#sfdx force:mdapi:deploy --deploydir mdapi-source/data-config

#sfdx force:mdapi:deploy --deploydir mdapi-source/org-config

sfdx force:source:push 

sfdx force:user:permset:assign -n FinancialServicesCloudStandard
sfdx force:user:permset:assign -n FSC_DataLoad_Custom

#sfdx force:apex:execute -f config/create-demo-data-setup.apex
#sfdx force:apex:execute -f config/create-demo-data.apex


sfdx force:org:open


#Data Import
#If not already, a project needs to Cumulus CI project to run CCI command
#Use "cci project init" to initilize CCI project
#https://cumulusci.readthedocs.io/en/latest/tutorial.html#part-2-project-configuration
#Link SFDX Alias to Cumulus CI (CCI)
cci org import FSCADK FSCADK

cci task run load_dataset -o mapping datasets/mapping.yml -o sql_path datasets/data.sql --org FSCADK 

#SFDX DMU plugin: https://github.com/forcedotcom/SFDX-Data-Move-Utility/wiki/3.-Running-the-Plugin.
#Data Extract
sfdx sfdmu:run --sourceusername jrattanpal-ey3n@force.com --targetusername csvfile -p data/sfdxdmu/

#data load
sfdx sfdmu:run --sourceusername csvfile --targetusername FSCADK -p data/sfdxdmu/
