Instructions to Run the Scripts:

1) Log into your Salesforce DevHub
    * sfdx force:auth:web:login

2) Clone the repo: 
    * git clone https://github.com/Vchalem/fsc-demo-pack.git
    
3) Change your directory to where the repo is: 
    * cd fsc-demo-pack

4) Checkout the BashScripts branch: 
   * git checkout BashScripts

5) Open the orgInit.sh file and edit: 
   *Set the variable “devhub” at the beginning of the script to point to your devhub alias
    * (To set an alias for your devhub use this command: sfdx force:alias:set YourAlias=username@example.com)
    
6) Run the orgInit.sh script
   * drag the orgInit.sh file to your terminal window (*use the same terminal window where you completed steps 1-4)
   * hit enter

