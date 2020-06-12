
#Steps
# Install SFDX CLI
# Install Comumuls CI
# Create Org
# IMport SFDX alias to CCI with "cci org import <sfdx-name> <cci-name>""
# Install FSC
# Deploy extra permission sets and profiles
# Assign permissionsets
# Run CCI data load 

#Need to connect org first where we want to run the tool
#I used 30-day free FSC org as it's all setup with data
sfdx force:source:deploy -p "force-app/main/default/lwc/chooseObject,force-app/main/default/lwc/objectSchema"

#Create scratch org with FSC
sfdx force:org:create -f config/project-scratch-def.json -a TestCumulusCI
sfdx force:user:permset:assign -n FinancialServicesCloudStandard -u TestCumulusCI
#Advisor profiles for FSC
sfdx force:source:deploy -u TestCumulusCI -p "force-app/main/default/profiles/Advisor.profile-meta.xml,force-app/main/default/profiles/Personal Banker.profile-meta.xml,force-app/main/default/profiles/Relationship Manager.profile-meta.xml"
sfdx force:source:deploy -u TestCumulusCI -p force-app/main/default/permissionsets/FSC_Admin.permissionset-meta.xml
sfdx force:user:permset:assign -n  FSC_Admin  -u TestCumulusCI
#Connect org
#trial is an alias, can be anything
cci org connect trial
#Manually Connect to sandbox or scratch org
cci org connect --sandbox TestCumulusCI
#Link SFDX ALias with CCI
cci org import <sfdx-name> <cci-name>

#Auto generate data mapping
#this will only generate namespaced objects and associated standard objects
# Standard objects in general are NOT retrieved AND only required fields or custom fields on standard objects are retrieved
cci task run generate_dataset_mapping --org trial -o namespace_prefix FinServ —path datasets/mapping_finserv.yml

#We used Ronit's script to generate this and modified the code for that
#This is manual but hopefully one time (or rarely updated)
#LWC to generate mapping file manually is at https://github.com/ronitnuguru/Schema-Metadata/tree/CumulusCIMappingFileGeneration
#Even after that, we have to remove many fields as they don't always work so manual massaging is needed

#Empty data if trying multiple times
delete [Select ID from Case];
delete [Select ID from OperatingHours];
delete [Select ID from Lead];
delete [Select ID from BusinessMilestone];
delete [Select ID from Location];
delete [Select ID from Opportunity];
delete [Select ID from FinServ__ChargesAndFees__c];
delete [Select ID from FinServ__ReciprocalRole__c];
delete [Select ID from FinServ__Securities__c];
delete [Select ID from FinServ__FinancialGoal__c];
delete [Select ID from FinServ__IdentificationDocument__c];
delete [Select ID from FinServ__AccountAccountRelation__c];
delete [Select ID from FinServ__FinancialAccount__c];
delete [Select ID from FinServ__Education__c];
delete [Select ID from FinServ__FinancialHolding__c];
delete [Select ID from FinServ__FinancialAccountRole__c];
delete [Select ID from FinServ__BillingStatement__c];
delete [Select ID from FinServ__Employment__c];
delete [Select ID from FinServ__ContactContactRelation__c];
delete [Select ID from FinServ__AssetsAndLiabilities__c];
delete [Select ID from FinServ__Card__c];
delete [Select ID from FinServ__Alert__c];
delete [Select ID from FinServ__LifeEvent__c];
delete [Select ID from FinServ__Revenue__c];
delete [Select ID from InsurancePolicy];
delete [Select ID from FinServ__FinancialAccountTransaction__c];
delete [Select ID from FinServ__PolicyPaymentMethod__c];

delete [Select ID from Account];
delete [Select ID from Contact];

#Use above generated mapping file to extract data from existing org
#cci task run extract_dataset -o mapping datasets/mapping_finserv.yml -o sql_path datasets/data_finserv.sql --org trial
#cci task run extract_dataset -o mapping datasets/mapping_FSC.yml -o sql_path datasets/data_FSC.sql --org trial
cci task run load_dataset -o mapping datasets/mapping_FSC_Without_PC.yml -o sql_path datasets/data_FSC_Without_PC.sql --org TestCumulusCI 
#mapping_FSC_Without_PC is to generate Account data without Person Account (__pc) fields. This is to get records that are non-Person Accounts otherwise those records will fail when using Bulk API
#Need to remove Person Account Fields becasue CCI doesn't differentiate between business and Person Accounts yet
#Need to empty "Name" field on Person Account otherwise it will fail with "INVALID_FIELD_FOR_INSERT_UPDATE:Unable to create/update fields: Name. Please check the security settings of this field and verify that it is read/write for your profile or permission set"

#Load data set
cci task run load_dataset -o mapping datasets/mapping_FSC.yml -o sql_path datasets/data_FSC.sql --org TestCumulusCI 