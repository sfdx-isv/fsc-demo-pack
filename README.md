Instructions to Run the Scripts:

1) Log into your Salesforce DevHub
    * sfdx force:auth:web:login

2) Clone the repo: 
    * git clone https://github.com/Vchalem/fsc-demo-pack.git
    
3) Change your directory to where the repo is: 
    * cd fsc-demo-pack

4) Checkout the BashScripts branch: 
   * git checkout BashScripts2

5) In finder: Go to the repo fsc-demo-pack > go to the config folder > Open the config.sh file and edit: 
   * Set the variable “devhub” at the beginning of the script to point to your devhub alias
      * (To set an alias for your devhub use this command: sfdx force:alias:set YourAlias=username@example.com)
   * Set the variable "markScratchOrgForDeletion"
      * 0=existing scratch org in your devhub will not be deleted
      * 1=existing scratch org in your devhub will be deleted
   * Set the variables for the install packages to point to the current release for the FSC Packages you are installing 
  

6) Open the orgInit.sh script and identify which of the scripts you want to run
      * By default they are all set =1 so that they will all run consecutively  

7) Run the orgInit.sh script
   * Type "./orgInit.sh", press enter and it will open newly created scratch org
   * hit enter

All commands together (after you update DevHub in config/config.sh)
```
git clone https://github.com/Vchalem/fsc-demo-pack.git
cd fsc-demo-pack.
git checkout BashScripts
./orgInit.sh
