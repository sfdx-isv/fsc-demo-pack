#!/bin/bash

#Source config file for variables
. ./config/config.sh

pkg="$1"
echo $sectionDelimiter

if [ -z $pkg ]; then
	echo "Provide package ID (As param to script) to install"
	errFlag=1
else
	echo Installing Package
	echo sfdx force:package:install --package $pkg -w $pkgInstallWaitTime -u $alias
	sfdx force:package:install --package $pkg -w $pkgInstallWaitTime -u $alias 2> logs/errorPkgInstall.txt
	output=$(grep -e"ERROR\b:" logs/errorPkgInstall.txt)
	echo $output
	if [ -z "$output" ]; then
		echo "Package Installed: $pkg"
		#No Error
		errFlag=0
	else
		echo "Package Install Failed: $pkg"
		errFlag=1
	fi
fi
echo $sectionDelimiter
