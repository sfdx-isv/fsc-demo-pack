BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Website" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"PersonTitle" VARCHAR(255), 
	"PersonOtherStreet" VARCHAR(255), 
	"PersonOtherState" VARCHAR(255), 
	"PersonOtherPostalCode" VARCHAR(255), 
	"PersonOtherPhone" VARCHAR(255), 
	"PersonOtherLongitude" VARCHAR(255), 
	"PersonOtherLatitude" VARCHAR(255), 
	"PersonOtherGeocodeAccuracy" VARCHAR(255), 
	"PersonOtherCountry" VARCHAR(255), 
	"PersonOtherCity" VARCHAR(255), 
	"PersonMobilePhone" VARCHAR(255), 
	"PersonMailingStreet" VARCHAR(255), 
	"PersonMailingState" VARCHAR(255), 
	"PersonMailingPostalCode" VARCHAR(255), 
	"PersonMailingLongitude" VARCHAR(255), 
	"PersonMailingLatitude" VARCHAR(255), 
	"PersonMailingGeocodeAccuracy" VARCHAR(255), 
	"PersonMailingCountry" VARCHAR(255), 
	"PersonMailingCity" VARCHAR(255), 
	"PersonLeadSource" VARCHAR(255), 
	"PersonHomePhone" VARCHAR(255), 
	"PersonEmail" VARCHAR(255), 
	"PersonBirthdate" VARCHAR(255), 
	"PersonAssistantPhone" VARCHAR(255), 
	"PersonAssistantName" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"FinServ__TotalRevenue__c" VARCHAR(255), 
	"FinServ__TotalPremium__c" VARCHAR(255), 
	"FinServ__TotalOutstandingCreditPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalOutstandingCreditJointOwner__c" VARCHAR(255), 
	"FinServ__TotalNumberOfFinAccountsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalNumberOfFinAccountsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalNonfinancialAssetsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalNonfinancialAssetsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalLiabilitiesPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalLiabilitiesJointOwner__c" VARCHAR(255), 
	"FinServ__TotalInvestmentsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalInvestmentsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalInsurancePrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalInsuranceJointOwner__c" VARCHAR(255), 
	"FinServ__TotalHeldFinAcctsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalHeldFinAcctsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalFinAcctsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalFinAcctsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalBankDepositsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalBankDepositsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalAUMPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalAUMJointOwner__c" VARCHAR(255), 
	"FinServ__TimeHorizon__c" VARCHAR(255), 
	"FinServ__Status__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__ServiceModel__c" VARCHAR(255), 
	"FinServ__RiskTolerance__c" VARCHAR(255), 
	"FinServ__ReviewFrequency__c" VARCHAR(255), 
	"FinServ__RelationshipStartDate__c" VARCHAR(255), 
	"FinServ__PersonalInterests__c" VARCHAR(255), 
	"FinServ__Notes__c" VARCHAR(255), 
	"FinServ__NextReview__c" VARCHAR(255), 
	"FinServ__NextInteraction__c" VARCHAR(255), 
	"FinServ__NetWorth__c" VARCHAR(255), 
	"FinServ__MarketingSegment__c" VARCHAR(255), 
	"FinServ__LifetimeValue__c" VARCHAR(255), 
	"FinServ__LastUsedChannel__c" VARCHAR(255), 
	"FinServ__LastTransactionDatePrimaryOwner__c" VARCHAR(255), 
	"FinServ__LastTransactionDateJointOwner__c" VARCHAR(255), 
	"FinServ__LastReview__c" VARCHAR(255), 
	"FinServ__LastInteraction__c" VARCHAR(255), 
	"FinServ__KYCStatus__c" VARCHAR(255), 
	"FinServ__KYCDate__c" VARCHAR(255), 
	"FinServ__InvestmentObjectives__c" VARCHAR(255), 
	"FinServ__InvestmentExperience__c" VARCHAR(255), 
	"FinServ__IndividualType__c" VARCHAR(255), 
	"FinServ__FinancialInterests__c" VARCHAR(255), 
	"FinServ__CustomerType__c" VARCHAR(255), 
	"FinServ__CustomerSegment__c" VARCHAR(255), 
	"FinServ__CustomerID__c" VARCHAR(255), 
	"FinServ__CreditScore__c" VARCHAR(255), 
	"FinServ__CreditRating__c" VARCHAR(255), 
	"FinServ__ConversionDateTime__c" VARCHAR(255), 
	"FinServ__ClientCategory__c" VARCHAR(255), 
	"FinServ__BranchName__c" VARCHAR(255), 
	"FinServ__BranchCode__c" VARCHAR(255), 
	"FinServ__BorrowingPriorities__c" VARCHAR(255), 
	"FinServ__BorrowingHistory__c" VARCHAR(255), 
	"FinServ__BankNumber__c" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"AccountNumber" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"OperatingHoursId" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"FinServ__PrimaryContact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0013h00000BGEeKAAX','www.cumulus-restaurants.com','Other','CLU','','','','','','','','','','','','','Hot','16283919393','','','','','','','','','','','','','','','','','','','','','','','','','','','','Cumulus Restaurants (Sample)','','','Food & Beverage','','','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFCyAAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeIAAX','www.adamsct.co.nb','','','','','','Adams Avenue','CA','95035','','','','United States','Milpitas','','','5107174299','','','','','','','','','','','','','','','','','','','','','','','','','','','1999','Adams Charitable Trust (Sample)','','','Not For Profit','','','','0.0','7100.0','1.0','1.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','275000.0','7100.0','275000.0','7100.0','275000.0','0.0','0.0','0.0','','','','','','','','','Rachel Adams is highly involved in the activities of this trust.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','10 Romolo Place','CA','94133','','','','United States','San Francisco','','','','0123h000000iFCzAAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeJAAX','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Adams Household (Sample)','','','','','','3000.0','54234.64','','13.0','','1000000.0','0.0','25000.0','0.0','1337000.0','0.0','2000000.0','0.0','1536911.21','','1778911.21','','387676.57','0.0','1195000.0','0.0','','','','','','','','','Adams Family is a highly valued, high net worth household.','','2021-06-02','','','','','','','','2020-07-10','','','','','Group','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFD0AAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeLAAX','','Partner','','','','','','','','','','','','','Mr.','Hot','(541) 754-3010','Agent','','','','','','','','','','','1155 Market Street','CA','94103','','','','United States','San Francisco','','','adamr@mikcorp.com','','','','','','','Thompson (Sample)','','','Aaron','','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','','','','','','','','','','','','','','','','','','','','','','','','Individual','','','','','','','','','','','','','','','','1155 Market Street','CA','94103','','','','United States','San Francisco','','','','0123h000000iFD1AAM','','','','0033h00000814bGAAQ',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeMAAX','','','','','','','','','','','','','','','Mr.','Hot','5105490092','','','','','','','','','','','5105490091','10021 South Blaney Avenue','CA','95014','','','','United States','Cupertino','','','neil.symonds@symonds.com','1950-03-17','','','','','','Symonds (Sample)','','','Neil','11.75','','0.0','0.0','1.0','1.0','0.0','0.0','0.0','0.0','324700.0','142000.0','0.0','0.0','324700.0','0.0','324700.0','142000.0','0.0','0.0','324700.0','0.0','Medium Term','Prospect','','Tier 2','Conservative','Quarterly','','Environment','','','2020-06-10','500000.0','High Net Worth','','','','','','2020-06-07','','','Balanced;Growth','Moderately Inexperienced','Individual','Fixed Income;Energy;Technology','','','','','','','Gold','','','','','','','','10021 South Blaney Avenue','CA','95014','','','','United States','Cupertino','','','','0123h000000iFD1AAM','','','','0033h00000814bEAAQ',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeNAAX','','','','','','','','','','','','','','','Mr.','','','','','','','','','','','','','','','','','','','','','','','','','1967-06-19','','','','','','Adams (Sample)','','','Nigel','','0.0','0.0','12377.65','1.0','1.0','0.0','1000000.0','0.0','0.0','300000.0','0.0','0.0','0.0','300000.0','12377.65','300000.0','12377.65','0.0','0.0','300000.0','0.0','','Prospect','','','','','','','','','','','','','','','','','','','','','','Individual','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFD1AAM','','','','0033h00000814bDAAQ',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeOAAX','','Customer','','','','','552 Grant Avenue','CA','94108','','','','United States','San Francisco','Mrs.','Hot','(500) 145-0557','','142 Sansome Street','CA','94104','510) 717-4299','','','','United States','San Francisco','5001450558','170 Post Street','CA','94108','','','','United States','San Francisco','','5009798658','rachel@acmecorp.com','1969-06-15','','','','','','Adams (Sample)','','','Rachel','500.0','','54234.64','0.0','11.0','0.0','1000000.0','0.0','25000.0','0.0','1037000.0','0.0','2000000.0','0.0','961911.21','0.0','1203911.21','0.0','112676.57','0.0','895000.0','0.0','Long Term','Active','','Tier 1','Moderate','Monthly','1993-11-07','Cooking;Wine','Rachel is participating in a triathlon soon. She is a fitness enthusiast.','2020-06-27','2021-06-02','3500000.0','High Net Worth;Female Investor','','Mobile','','','2020-05-27','2020-07-10','Completed - Valid','2019-12-13','Income;Balanced;Growth','Experienced','Individual','Fixed Income;Technology;Retirement;College Planning','','Mass Affluent;Long Term Growth','','','','','Platinum','','','','','','','','1155 Market Street','CA','94103','','','','United States','San Francisco','','','','0123h000000iFD1AAM','','','','0033h00000814bCAAQ',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeQAAX','','Other','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','35','Smith, Kohl and Company (Sample)','','','Other','','','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFCyAAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeRAAX','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Symonds Household (Sample)','','','','','','','','','1.0','','0.0','0.0','0.0','0.0','324700.0','0.0','0.0','0.0','324700.0','','324700.0','','0.0','0.0','324700.0','0.0','','','','','','','','','Rachel''s parents'' household','','2020-06-10','','','','','','','','2020-06-07','','','','','Group','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFD0AAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEePAAX','','','','','','','','','','','','','','','Ms.','','(605) 414-2147','Agent','','','','','','','','','','','','','','','','','','','','','aliciasergei@gmail.com','','','','','','','Sergi ( Sample )','','','Alishia','','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','','','','','','','','','','','','','','','','','','','','','','','','Individual','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFD1AAM','','','','0033h00000814bHAAQ',NULL);
CREATE TABLE "AccountContactRelation" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__IncludeInGroup__c" VARCHAR(255), 
	"FinServ__PrimaryGroup__c" VARCHAR(255), 
	"FinServ__Primary__c" VARCHAR(255), 
	"FinServ__Rollups__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBhAAK','true','false','false','Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities','','true','0013h00000BGEeIAAX','0033h00000814bCAAQ',NULL);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBiAAK','false','false','false','','','true','0013h00000BGEeRAAX','0033h00000814bCAAQ',NULL);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBjAAK','false','true','true','Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities','','true','0013h00000BGEeRAAX','0033h00000814bEAAQ',NULL);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBlAAK','false','true','true','Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities','','true','0013h00000BGEeJAAX','0033h00000814bCAAQ',NULL);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBnAAK','false','true','false','Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities','','true','0013h00000BGEeJAAX','0033h00000814bDAAQ',NULL);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBoAAK','false','false','false','','','true','0013h00000BGEeQAAX','0033h00000814bFAAQ',NULL);
INSERT INTO "AccountContactRelation" VALUES('07k3h000001StBsAAK','false','false','false','','','true','0013h00000BGEeQAAX','0033h00000814bIAAQ',NULL);
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('0123h000000iFCyAAM','IndustriesBusiness');
INSERT INTO "Account_rt_mapping" VALUES('0123h000000iFCzAAM','IndustriesInstitution');
INSERT INTO "Account_rt_mapping" VALUES('0123h000000iFD0AAM','IndustriesHousehold');
INSERT INTO "Account_rt_mapping" VALUES('0123h000000iFD1AAM','PersonAccount');
INSERT INTO "Account_rt_mapping" VALUES('0123h000000iFD2AAM','IndustriesIndividual');
CREATE TABLE "Contact" (
	sf_id VARCHAR(255) NOT NULL, 
	"Title" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"OtherStreet" VARCHAR(255), 
	"OtherState" VARCHAR(255), 
	"OtherPostalCode" VARCHAR(255), 
	"OtherPhone" VARCHAR(255), 
	"OtherLongitude" VARCHAR(255), 
	"OtherLatitude" VARCHAR(255), 
	"OtherGeocodeAccuracy" VARCHAR(255), 
	"OtherCountry" VARCHAR(255), 
	"OtherCity" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MailingLongitude" VARCHAR(255), 
	"MailingLatitude" VARCHAR(255), 
	"MailingGeocodeAccuracy" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"HomePhone" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"FinServ__WeddingAnniversary__c" VARCHAR(255), 
	"FinServ__Twitter__c" VARCHAR(255), 
	"FinServ__TaxId__c" VARCHAR(255), 
	"FinServ__TaxBracket__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__SecondaryLanguage__c" VARCHAR(255), 
	"FinServ__SecondaryCitizenship__c" VARCHAR(255), 
	"FinServ__ReferrerScore__c" VARCHAR(255), 
	"FinServ__PrimaryLanguage__c" VARCHAR(255), 
	"FinServ__PrimaryCitizenship__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsShipping__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsOther__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsMailing__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsBilling__c" VARCHAR(255), 
	"FinServ__PreferredName__c" VARCHAR(255), 
	"FinServ__Occupation__c" VARCHAR(255), 
	"FinServ__NumberOfDependents__c" VARCHAR(255), 
	"FinServ__NumberOfChildren__c" VARCHAR(255), 
	"FinServ__NextLifeEvent__c" VARCHAR(255), 
	"FinServ__MotherMaidenName__c" VARCHAR(255), 
	"FinServ__MostUsedChannel__c" VARCHAR(255), 
	"FinServ__MobileVerified__c" VARCHAR(255), 
	"FinServ__MarketingOptOut__c" VARCHAR(255), 
	"FinServ__MaritalStatus__c" VARCHAR(255), 
	"FinServ__LinkedIn__c" VARCHAR(255), 
	"FinServ__LastFourDigitSSN__c" VARCHAR(255), 
	"FinServ__LanguagesSpoken__c" VARCHAR(255), 
	"FinServ__IndividualType__c" VARCHAR(255), 
	"FinServ__HomePhoneVerified__c" VARCHAR(255), 
	"FinServ__HomeOwnership__c" VARCHAR(255), 
	"FinServ__Gender__c" VARCHAR(255), 
	"FinServ__FaxVerified__c" VARCHAR(255), 
	"FinServ__Facebook__c" VARCHAR(255), 
	"FinServ__EmployedSince__c" VARCHAR(255), 
	"FinServ__EmailVerified__c" VARCHAR(255), 
	"FinServ__CustomerTimezone__c" VARCHAR(255), 
	"FinServ__CurrentEmployer__c" VARCHAR(255), 
	"FinServ__CreatedFromLead__c" VARCHAR(255), 
	"FinServ__CountryOfResidence__c" VARCHAR(255), 
	"FinServ__CountryOfBirth__c" VARCHAR(255), 
	"FinServ__ContactPreference__c" VARCHAR(255), 
	"FinServ__CommunicationPreferences__c" VARCHAR(255), 
	"FinServ__Citizenship__c" VARCHAR(255), 
	"FinServ__AnnualIncome__c" VARCHAR(255), 
	"FinServ__Affiliations__c" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"AssistantName" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Contact" VALUES('0033h00000814bFAAQ','Agent','Mr.','','77 Bush Street','CA','95126','','','','','United States','San Jose','','1 Post Street','CA','95113','','','','United States','San Jose','','Kohl (Sample)','','','Ivan','','','','','','','','','','','false','false','false','false','','','','','','','','false','false','','','','','','false','','','false','','','false','','','false','','','','','','','','','','','ivan.kohl@skh.com','','','','','','0123h000000iFCrAAM','','','0013h00000BGEeQAAX',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bIAAQ','Snr Agent','Mr.','','77 Bush Street','CA','95126','','','','','United States','San Jose','','1 Post Street','CA','95113','','','','United States','San Jose','','Smith (Sample)','','','Steve','','','','','','','','0.0','','','false','false','false','false','','','','','','','','false','false','','','','','','false','','','false','','','false','','','false','','','','','','','','','','','steve.smith@skh.com','','','','','','0123h000000iFCrAAM','','','0013h00000BGEeQAAX',NULL);
CREATE TABLE "Contact_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Contact_rt_mapping" VALUES('0123h000000iFCrAAM','IndustriesBusiness');
INSERT INTO "Contact_rt_mapping" VALUES('0123h000000iFD9AAM','IndustriesIndividual');
CREATE TABLE "OperatingHours" (
	sf_id VARCHAR(255) NOT NULL, 
	"TimeZone" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Description" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "OperatingHours" VALUES('0OH3h000000LiwbGAC','America/Los_Angeles','Operating Hours (Sample)','',NULL);
INSERT INTO "OperatingHours" VALUES('0OH3h000000LiwcGAC','America/Los_Angeles','Admin User Operating Hours (Sample)','',NULL);
INSERT INTO "OperatingHours" VALUES('0OH3h000000LiwdGAC','America/Los_Angeles','Ryan Dobson Operating Hours (Sample)','',NULL);
CREATE TABLE "Lead" (
	sf_id VARCHAR(255) NOT NULL, 
	"Website" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"Street" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"State" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"Longitude" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"Latitude" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"IsUnreadByOwner" VARCHAR(255), 
	"Industry" VARCHAR(255),
	"GeocodeAccuracy" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"FinServ__PotentialValue__c" VARCHAR(255), 
	"FinServ__ExpressedInterest__c" VARCHAR(255), 
	"FinServ__Employer__c" VARCHAR(255), 
	"FinServ__CreatedFromLead__c" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Company" VARCHAR(255), 
	"City" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__RelatedAccount__c" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Lead" VALUES('00Q3h0000075qyJEAQ','www.biglifeinc.com','Senior VP','11 Farm Avenue','Working','Connecticut','','Hot','6156','(555) 555-1212','2800','(555) 555-1212','','Trade Show','','Steele (Sample)','','false','Insurance','','John','','','','false','','info@salesforce.com','','United States','','Hartford','','0123h000000iFCsAAM','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyKEAQ','','System Administrator','One Jones Avenue','Nurturing','New York','','Cold','10010','(555) 555-1212','8500','(555) 555-1212','','Employee Referral','','Loehr (Sample)','','false','Insurance','','Sarah','','','','false','','info@salesforce.com','','United States','','New York','','0123h000000iFCsAAM','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyLEAQ','www.universaltech.com','Vice President','1 Universal Building','Qualified','Connecticut','Mr.','Warm','06103','(555) 555-1212','550','(555) 555-1212','','Advertisement','','Smith (Sample)','','false','Technology','','Andy','','','','false','','info@salesforce.com','','United States','Universal Technologies','Hartford','','','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyMEAQ','','Director, Information Technology','120 Sutter Street','Working','California','Mr.','Warm','94105','(415) 555-2356','365','(415) 555-9865','','Other','','Adelson (Sample)','','false','Communications','','David','','','','false','','info@salesforce.com','','United States','','San Francisco','','0123h000000iFCsAAM','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyNEAQ','','','10021 South Blaney Avenue','Qualified','CA','Mr.','Hot','95014','5105490092','','5105490091','','','','Symonds','','false','','','Neil','','','Symonds Inc.','true','','neil.symonds@symonds.com','','United States','Neil Symonds','Cupertino','','0123h000000iFCsAAM','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyOEAQ','','CEO','121 Fillmore Street','Qualified','CA','Mr.','','94117','4203910121','','','','Other','','Johnson','','false','Apparel','','Abraham','','','','true','','abra@johnsons.com','','United States','Johnsons & Johnsons Inc.','San Francisco','','0123h000000iFCtAAM','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyPEAQ','','Chief Marketing Officer','1700 Van Nuss Avenue','Working - Contacted','CA','Ms.','Hot','94109','75067827235','','','','Other','','Jha (Sample)','','false','','','Manisha','1705000.0','Mortgage','Acme (Sample)','true','','manishajha@acme.com','Manisha is in the process of purchasing a vacation home in Tahoe. She has a 20-year old professional relationship with Rachel.','United States','','San Francisco','','0123h000000iFCuAAM','','0033h00000814bFAAQ','0013h00000BGEeJAAX',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyQEAQ','','','1155 Market Street','Nurturing - Contacted','CA','Mrs.','Hot','94103','(500) 145-0557','','','','','','Adams (Sample)','','false','','','Rachel','10000.0','Credit Card','','true','','rachel@acmecorp.com','','United States','','San Francisco','','0123h000000iFCuAAM','0013h00000BGEeOAAX','0033h00000814bIAAQ','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyREAQ','','','1155 Market Street','Qualified','CA','Mr.','Hot','94103','(500) 145-0375','','','','','','Richman (Sample)','','false','','','Adam','100000.0','Credit Card','','true','','adamr@mikcorp.com','','United States','','San Francisco','','0123h000000iFCuAAM','0013h00000BGEeLAAX','0033h00000814bFAAQ','',NULL);
CREATE TABLE "Lead_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFCsAAM','RetirementPlanning');
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFCtAAM','General');
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFCuAAM','Referral');
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFDUAA2','BusinessReferral');
COMMIT;