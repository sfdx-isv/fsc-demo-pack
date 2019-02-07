#!/bin/bash

#***variables****(will be part of heroku deployer..)
#devhub
devhub=MyDevHubTE

#Mark existing org for deletion
markScratchOrgForDeletion=1
#ScratchOrdDays
scratchOrgDays=15
#alias of scratch org
alias=FSCADK1
#Set this as default alias
defaultAlias=1
#config file for scratch org
config=config/demo-scratch-def.json
#package versions 
pkg1=04t80000000jZjl
pkg2=04t80000001AWVh
pkgInstallWaitTime=20



#mdapi-directories
appconfig=mdapi-source/app-config
dataconfig=mdapi-source/data-config
orgconfig=mdapi-source/org-config
deployWaitTime=5


sectionDelimiter="**********=================**********"