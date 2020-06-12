BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"FinServ__BankNumber__c" VARCHAR(255), 
	"FinServ__BorrowingHistory__c" VARCHAR(255), 
	"FinServ__BorrowingPriorities__c" VARCHAR(255), 
	"FinServ__BranchCode__c" VARCHAR(255), 
	"FinServ__BranchName__c" VARCHAR(255), 
	"FinServ__ClientCategory__c" VARCHAR(255), 
	"FinServ__ConversionDateTime__c" VARCHAR(255), 
	"FinServ__CreatedFromLead__pc" VARCHAR(255), 
	"FinServ__CreditRating__c" VARCHAR(255), 
	"FinServ__CreditScore__c" VARCHAR(255), 
	"FinServ__CustomerID__c" VARCHAR(255), 
	"FinServ__CustomerSegment__c" VARCHAR(255), 
	"FinServ__CustomerType__c" VARCHAR(255), 
	"FinServ__EmailVerified__pc" VARCHAR(255), 
	"FinServ__FaxVerified__pc" VARCHAR(255), 
	"FinServ__FinancialInterests__c" VARCHAR(255), 
	"FinServ__HomePhoneVerified__pc" VARCHAR(255), 
	"FinServ__IndividualId__c" VARCHAR(255), 
	"FinServ__IndividualType__c" VARCHAR(255), 
	"FinServ__InvestmentExperience__c" VARCHAR(255), 
	"FinServ__InvestmentObjectives__c" VARCHAR(255), 
	"FinServ__KYCDate__c" VARCHAR(255), 
	"FinServ__KYCStatus__c" VARCHAR(255), 
	"FinServ__LastInteraction__c" VARCHAR(255), 
	"FinServ__LastReview__c" VARCHAR(255), 
	"FinServ__LastTransactionDateJointOwner__c" VARCHAR(255), 
	"FinServ__LastTransactionDatePrimaryOwner__c" VARCHAR(255), 
	"FinServ__LastUsedChannel__c" VARCHAR(255), 
	"FinServ__LifetimeValue__c" VARCHAR(255), 
	"FinServ__MarketingOptOut__pc" VARCHAR(255), 
	"FinServ__MarketingSegment__c" VARCHAR(255), 
	"FinServ__MobileVerified__pc" VARCHAR(255), 
	"FinServ__NetWorth__c" VARCHAR(255), 
	"FinServ__NextInteraction__c" VARCHAR(255), 
	"FinServ__NextReview__c" VARCHAR(255), 
	"FinServ__Notes__c" VARCHAR(255), 
	"FinServ__PersonalInterests__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsBilling__pc" VARCHAR(255), 
	"FinServ__PrimaryAddressIsMailing__pc" VARCHAR(255), 
	"FinServ__PrimaryAddressIsOther__pc" VARCHAR(255), 
	"FinServ__PrimaryAddressIsShipping__pc" VARCHAR(255), 
	"FinServ__RelationshipStartDate__c" VARCHAR(255), 
	"FinServ__ReviewFrequency__c" VARCHAR(255), 
	"FinServ__RiskTolerance__c" VARCHAR(255), 
	"FinServ__ServiceModel__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__Status__c" VARCHAR(255), 
	"FinServ__TimeHorizon__c" VARCHAR(255), 
	"FinServ__TotalAUMJointOwner__c" VARCHAR(255), 
	"FinServ__TotalAUMPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalBankDepositsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalBankDepositsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalFinAcctsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalFinAcctsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalHeldFinAcctsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalHeldFinAcctsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalInsuranceJointOwner__c" VARCHAR(255), 
	"FinServ__TotalInsurancePrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalInvestmentsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalInvestmentsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalLiabilitiesJointOwner__c" VARCHAR(255), 
	"FinServ__TotalLiabilitiesPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalNonfinancialAssetsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalNonfinancialAssetsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalNumberOfFinAccountsJointOwner__c" VARCHAR(255), 
	"FinServ__TotalNumberOfFinAccountsPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalOutstandingCreditJointOwner__c" VARCHAR(255), 
	"FinServ__TotalOutstandingCreditPrimaryOwner__c" VARCHAR(255), 
	"FinServ__TotalPremium__c" VARCHAR(255), 
	"FinServ__TotalRevenue__c" VARCHAR(255), 
	"PersonDoNotCall" VARCHAR(255), 
	"PersonHasOptedOutOfEmail" VARCHAR(255), 
	"PersonHasOptedOutOfFax" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__PrimaryContact__c" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"FinServ__ReferredByContact__pc" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0013h00000BGEeKAAX','','','Cumulus Restaurants (Sample)','','','','','','','','false','','','','','','false','false','','false','','','','','','','','','','','','','false','','false','','','','','','false','false','false','false','','','','','','','','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','','','false','false','false','0123h000000iFCyAAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeIAAX','','','Adams Charitable Trust (Sample)','','','','','','','','false','','','','','','false','false','','false','','','','','','','','','','','','','false','','false','','','','Rachel Adams is highly involved in the activities of this trust.','','false','false','false','false','','','','','','','','0.0','0.0','0.0','275000.0','7100.0','275000.0','7100.0','275000.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','1.0','1.0','7100.0','0.0','','','false','false','false','0123h000000iFCzAAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeJAAX','','','Adams Household (Sample)','','','','','','','','false','','','','','','false','false','','false','','Group','','','','','2020-07-10','','','','','','false','','false','','2021-06-02','','Adams Family is a highly valued, high net worth household.','','false','false','false','false','','','','','','','','0.0','1195000.0','0.0','387676.57','','1778911.21','','1536911.21','0.0','2000000.0','0.0','1337000.0','0.0','25000.0','0.0','1000000.0','','13.0','','54234.64','3000.0','','false','false','false','0123h000000iFD0AAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeLAAX','Aaron','Thompson (Sample)','Aaron Thompson (Sample)','','','','','','','','false','','','','','','false','false','','false','0013A00001d0PBnQAM1560449228540','Individual','','','','','','','','','','','false','','false','','','','','','false','false','false','false','','','','','','','','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','','','false','false','false','0123h000000iFD1AAM','0033h00000814bGAAQ','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeMAAX','Neil','Symonds (Sample)','Neil Symonds (Sample)','','','','','','Gold','','false','','','','','','false','false','Fixed Income;Energy;Technology','false','0014100000AlE7lAAF1480462398937','Individual','Moderately Inexperienced','Balanced;Growth','','','2020-06-07','','','','','','false','High Net Worth','false','500000.0','2020-06-10','','','Environment','false','false','false','false','','Quarterly','Conservative','Tier 2','','Prospect','Medium Term','0.0','324700.0','0.0','0.0','142000.0','324700.0','0.0','324700.0','0.0','0.0','142000.0','324700.0','0.0','0.0','0.0','0.0','1.0','1.0','0.0','0.0','','11.75','false','false','false','0123h000000iFD1AAM','0033h00000814bEAAQ','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeNAAX','Nigel','Adams (Sample)','Nigel Adams (Sample)','','','','','','','','false','','','','','','false','false','','false','00141000007RvpBAAS1477432542883','Individual','','','','','','','','','','','false','','false','','','','','','false','false','false','false','','','','','','Prospect','','0.0','300000.0','0.0','0.0','12377.65','300000.0','12377.65','300000.0','0.0','0.0','0.0','300000.0','0.0','0.0','1000000.0','0.0','1.0','1.0','12377.65','0.0','0.0','','false','false','false','0123h000000iFD1AAM','0033h00000814bDAAQ','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeOAAX','Rachel','Adams (Sample)','Rachel Adams (Sample)','','','','','','Platinum','','false','','','','Mass Affluent;Long Term Growth','','true','false','Fixed Income;Technology;Retirement;College Planning','false','00141000007RvoNAAS1477432486737','Individual','Experienced','Income;Balanced;Growth','2019-12-13','Completed - Valid','2020-07-10','2020-05-27','','','Mobile','','true','High Net Worth;Female Investor','true','3500000.0','2021-06-02','2020-06-27','Rachel is participating in a triathlon soon. She is a fitness enthusiast.','Cooking;Wine','false','true','false','false','1993-11-07','Monthly','Moderate','Tier 1','','Active','Long Term','0.0','895000.0','0.0','112676.57','0.0','1203911.21','0.0','961911.21','0.0','2000000.0','0.0','1037000.0','0.0','25000.0','0.0','1000000.0','0.0','11.0','0.0','54234.64','','500.0','false','false','false','0123h000000iFD1AAM','0033h00000814bCAAQ','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeQAAX','','','Smith, Kohl and Company (Sample)','','','','','','','','false','','','','','','false','false','','false','','','','','','','','','','','','','false','','false','','','','','','false','false','false','false','','','','','','','','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','','','false','false','false','0123h000000iFCyAAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEeRAAX','','','Symonds Household (Sample)','','','','','','','','false','','','','','','false','false','','false','','Group','','','','','2020-06-07','','','','','','false','','false','','2020-06-10','','Rachel''s parents'' household','','false','false','false','false','','','','','','','','0.0','324700.0','0.0','0.0','','324700.0','','324700.0','0.0','0.0','0.0','324700.0','0.0','0.0','0.0','0.0','','1.0','','','','','false','false','false','0123h000000iFD0AAM','','','','',NULL);
INSERT INTO "Account" VALUES('0013h00000BGEePAAX','Alishia','Sergi ( Sample )','Alishia Sergi ( Sample )','','','','','','','','false','','','','','','false','false','','false','0013k00002grCLRAA21582540439762','Individual','','','','','','','','','','','false','','false','','','','','','false','false','false','false','','','','','','','','0.0','0.0','0.0','0.0','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','','','','','','','false','false','false','0123h000000iFD1AAM','0033h00000814bHAAQ','','','',NULL);
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
CREATE TABLE "Case" (
	sf_id VARCHAR(255) NOT NULL, 
	"IsEscalated" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Case" VALUES('5003h000004gnEeAAI','false','0013h00000BGEeLAAX','0033h00000814bGAAQ','','',NULL);
INSERT INTO "Case" VALUES('5003h000004gnEfAAI','false','0013h00000BGEeNAAX','0033h00000814bDAAQ','','',NULL);
INSERT INTO "Case" VALUES('5003h000004gnEgAAI','false','0013h00000BGEeLAAX','0033h00000814bGAAQ','','',NULL);
INSERT INTO "Case" VALUES('5003h000004gnEhAAI','false','0013h00000BGEeOAAX','0033h00000814bCAAQ','','',NULL);
CREATE TABLE "Contact" (
	sf_id VARCHAR(255) NOT NULL, 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"FinServ__Affiliations__c" VARCHAR(255), 
	"FinServ__AnnualIncome__c" VARCHAR(255), 
	"FinServ__Citizenship__c" VARCHAR(255), 
	"FinServ__CommunicationPreferences__c" VARCHAR(255), 
	"FinServ__ContactPreference__c" VARCHAR(255), 
	"FinServ__CountryOfBirth__c" VARCHAR(255), 
	"FinServ__CountryOfResidence__c" VARCHAR(255), 
	"FinServ__CreatedFromLead__c" VARCHAR(255), 
	"FinServ__CurrentEmployer__c" VARCHAR(255), 
	"FinServ__CustomerTimezone__c" VARCHAR(255), 
	"FinServ__EmailVerified__c" VARCHAR(255), 
	"FinServ__EmployedSince__c" VARCHAR(255), 
	"FinServ__Facebook__c" VARCHAR(255), 
	"FinServ__FaxVerified__c" VARCHAR(255), 
	"FinServ__Gender__c" VARCHAR(255), 
	"FinServ__HomeOwnership__c" VARCHAR(255), 
	"FinServ__HomePhoneVerified__c" VARCHAR(255), 
	"FinServ__IndividualType__c" VARCHAR(255), 
	"FinServ__LanguagesSpoken__c" VARCHAR(255), 
	"FinServ__LastFourDigitSSN__c" VARCHAR(255), 
	"FinServ__LinkedIn__c" VARCHAR(255), 
	"FinServ__MaritalStatus__c" VARCHAR(255), 
	"FinServ__MarketingOptOut__c" VARCHAR(255), 
	"FinServ__MobileVerified__c" VARCHAR(255), 
	"FinServ__MostUsedChannel__c" VARCHAR(255), 
	"FinServ__MotherMaidenName__c" VARCHAR(255), 
	"FinServ__NextLifeEvent__c" VARCHAR(255), 
	"FinServ__NumberOfChildren__c" VARCHAR(255), 
	"FinServ__NumberOfDependents__c" VARCHAR(255), 
	"FinServ__Occupation__c" VARCHAR(255), 
	"FinServ__PreferredName__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsBilling__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsMailing__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsOther__c" VARCHAR(255), 
	"FinServ__PrimaryAddressIsShipping__c" VARCHAR(255), 
	"FinServ__PrimaryCitizenship__c" VARCHAR(255), 
	"FinServ__PrimaryLanguage__c" VARCHAR(255), 
	"FinServ__ReferrerScore__c" VARCHAR(255), 
	"FinServ__SecondaryCitizenship__c" VARCHAR(255), 
	"FinServ__SecondaryLanguage__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__TaxBracket__c" VARCHAR(255), 
	"FinServ__TaxId__c" VARCHAR(255), 
	"FinServ__Twitter__c" VARCHAR(255), 
	"FinServ__WeddingAnniversary__c" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Contact" VALUES('0033h00000814bCAAQ','Rachel','Adams (Sample)','false','','350000.0','','Fraud:Phone;Fraud:Email;Fraud:SMS;Promotions:Phone','Mobile','','','false','ACME Inc','America/Los_Angeles','true','2016-04-30','','false','','','false','Individual','English, Arabic, Spanish, French','0606','','Married','true','true','','','Critical Family Event','','','SVP, Practices','Rachel','false','true','false','false','United States','','0.0','Andorra','','','33%','','','1991-04-28','false','false','','0013h00000BGEeOAAX','','',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bDAAQ','Nigel','Adams (Sample)','false','','','','','','','','false','','','false','','','false','','','false','Individual','','','','','false','false','','','','','','','','false','false','false','false','','','','','','','','','','','false','false','','0013h00000BGEeNAAX','','',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bEAAQ','Neil','Symonds (Sample)','false','','','','','','','','false','Symonds Inc.','','false','','','false','','','false','Individual','','','','','false','false','','','','','','','','false','false','false','false','','','0.0','','','','','','','','false','false','','0013h00000BGEeMAAX','','',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bFAAQ','Ivan','Kohl (Sample)','false','','','','','','','','false','','','false','','','false','','','false','','','','','','false','false','','','','','','','','false','false','false','false','','','','','','','','','','','false','false','0123h000000iFCrAAM','0013h00000BGEeQAAX','','',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bGAAQ','Aaron','Thompson (Sample)','false','','','','','','United States','','false','','','false','','','false','','','false','','','','','','false','false','','','','','','','','false','false','false','false','United States','English','0.0','United States','English','','','','','','false','false','','0013h00000BGEeLAAX','','',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bHAAQ','Alishia','Sergi ( Sample )','false','','','','','','United States','','false','','','false','','','false','','','false','','','','','','false','false','','','','','','','','false','false','false','false','United States','English','0.0','United States','English','','','','','','false','false','','0013h00000BGEePAAX','','',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bIAAQ','Steve','Smith (Sample)','false','','','','','','','','false','','','false','','','false','','','false','','','','','','false','false','','','','','','','','false','false','false','false','','','0.0','','','','','','','','false','false','0123h000000iFCrAAM','0013h00000BGEeQAAX','','',NULL);
CREATE TABLE "Contact_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Contact_rt_mapping" VALUES('0123h000000iFCrAAM','IndustriesBusiness');
INSERT INTO "Contact_rt_mapping" VALUES('0123h000000iFD9AAM','IndustriesIndividual');
CREATE TABLE "FinServ__AccountAccountRelation__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__Active__c" VARCHAR(255), 
	"FinServ__AssociationType__c" VARCHAR(255), 
	"FinServ__EndDate__c" VARCHAR(255), 
	"FinServ__ExternalId__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__StartDate__c" VARCHAR(255), 
	"FinServ__Account__c" VARCHAR(255), 
	"FinServ__InverseRelationship__c" VARCHAR(255), 
	"FinServ__RelatedAccount__c" VARCHAR(255), 
	"FinServ__Role__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__Alert__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__Active__c" VARCHAR(255), 
	"FinServ__MessageDescription__c" VARCHAR(255), 
	"FinServ__Message__c" VARCHAR(255), 
	"FinServ__Priority__c" VARCHAR(255), 
	"FinServ__Severity__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__Account__c" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__AssetsAndLiabilities__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__Amount__c" VARCHAR(255), 
	"FinServ__AssetsAndLiabilitiesSource__c" VARCHAR(255), 
	"FinServ__AssetsAndLiabilitiesType__c" VARCHAR(255), 
	"FinServ__Description__c" VARCHAR(255), 
	"FinServ__OwnerType__c" VARCHAR(255), 
	"FinServ__Ownership__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__JointOwner__c" VARCHAR(255), 
	"FinServ__PrimaryOwner__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__AssetsAndLiabilities__c" VALUES('a023h000004ZfMmAAK','Auto Loan (Sample)','25000.0','','Auto Loan','','0013h00000BGEeOAAX','Individual','','0123h000000iFD7AAM','','0013h00000BGEeJAAX','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__AssetsAndLiabilities__c" VALUES('a023h000004ZfMnAAK','Adams'' House (Sample)','1000000.0','','Real Estate','','0013h00000BGEeOAAX','Joint','','0123h000000iFD8AAM','','0013h00000BGEeJAAX','0013h00000BGEeNAAX','0013h00000BGEeOAAX',NULL);
CREATE TABLE "FinServ__AssetsAndLiabilities__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "FinServ__AssetsAndLiabilities__c_rt_mapping" VALUES('0123h000000iFD7AAM','Liability');
INSERT INTO "FinServ__AssetsAndLiabilities__c_rt_mapping" VALUES('0123h000000iFD8AAM','NonfinancialAsset');
CREATE TABLE "FinServ__BillingStatement__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__BalanceTransfers__c" VARCHAR(255), 
	"FinServ__BillingPeriodEnd__c" VARCHAR(255), 
	"FinServ__BillingPeriodStart__c" VARCHAR(255), 
	"FinServ__CashAdvances__c" VARCHAR(255), 
	"FinServ__Deposits__c" VARCHAR(255), 
	"FinServ__EndingBalance__c" VARCHAR(255), 
	"FinServ__FeesCharged__c" VARCHAR(255), 
	"FinServ__InterestThisPeriod__c" VARCHAR(255), 
	"FinServ__InterestYTD__c" VARCHAR(255), 
	"FinServ__LastPaymentDate__c" VARCHAR(255), 
	"FinServ__MinimumPaymentDue__c" VARCHAR(255), 
	"FinServ__OtherCredits__c" VARCHAR(255), 
	"FinServ__PastDueAmount__c" VARCHAR(255), 
	"FinServ__PaymentDueDate__c" VARCHAR(255), 
	"FinServ__Payments__c" VARCHAR(255), 
	"FinServ__PreviousBalance__c" VARCHAR(255), 
	"FinServ__Purchases__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__StatementDate__c" VARCHAR(255), 
	"FinServ__Withdrawals__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__BillingStatement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
CREATE TABLE "FinServ__Card__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__Active__c" VARCHAR(255), 
	"FinServ__BinNumber__c" VARCHAR(255), 
	"FinServ__OwnershipType__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__ValidUntil__c" VARCHAR(255), 
	"FinServ__AccountHolder__c" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__ChargesAndFees__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__APRType__c" VARCHAR(255), 
	"FinServ__APR__c" VARCHAR(255), 
	"FinServ__ATMFee__c" VARCHAR(255), 
	"FinServ__AnnualAccountCharge__c" VARCHAR(255), 
	"FinServ__AnnualMembershipFee__c" VARCHAR(255), 
	"FinServ__BalanceTransferAPR__c" VARCHAR(255), 
	"FinServ__CashAPRType__c" VARCHAR(255), 
	"FinServ__CashAPR__c" VARCHAR(255), 
	"FinServ__CashAdvanceFee__c" VARCHAR(255), 
	"FinServ__ForeignTransactionFee__c" VARCHAR(255), 
	"FinServ__InsufficientFundsFee__c" VARCHAR(255), 
	"FinServ__InterestRate__c" VARCHAR(255), 
	"FinServ__LatePaymentFee__c" VARCHAR(255), 
	"FinServ__MaximumTransactionFee__c" VARCHAR(255), 
	"FinServ__MonthlyServiceFee__c" VARCHAR(255), 
	"FinServ__OverdraftFees__c" VARCHAR(255), 
	"FinServ__ReplacementCardFee__c" VARCHAR(255), 
	"FinServ__ReturnedCheckFee__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__StatementFee__c" VARCHAR(255), 
	"FinServ__StopPaymentFee__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__ChargesAndFees__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
CREATE TABLE "FinServ__ContactContactRelation__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__Active__c" VARCHAR(255), 
	"FinServ__EndDate__c" VARCHAR(255), 
	"FinServ__ExternalId__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__StartDate__c" VARCHAR(255), 
	"FinServ__Contact__c" VARCHAR(255), 
	"FinServ__InverseRelationship__c" VARCHAR(255), 
	"FinServ__RelatedContact__c" VARCHAR(255), 
	"FinServ__Role__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__ContactContactRelation__c" VALUES('a043h00000Ldg0ZAAR','true','','','','2020-06-09','0033h00000814bCAAQ','a043h00000Ldg0aAAB','0033h00000814bFAAQ','a0E3h00000041XNEAY',NULL);
INSERT INTO "FinServ__ContactContactRelation__c" VALUES('a043h00000Ldg0aAAB','true','','','','2020-06-09','0033h00000814bFAAQ','a043h00000Ldg0ZAAR','0033h00000814bCAAQ','a0E3h00000041XTEAY',NULL);
CREATE TABLE "FinServ__Education__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__EducationLevel__c" VARCHAR(255), 
	"FinServ__GraduationDate__c" VARCHAR(255), 
	"FinServ__Institution__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__Contact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__Employment__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__AnnualIncome__c" VARCHAR(255), 
	"FinServ__EmployerAddress__c" VARCHAR(255), 
	"FinServ__EmployerPhoneNumber__c" VARCHAR(255), 
	"FinServ__EmploymentStatus__c" VARCHAR(255), 
	"FinServ__EndDate__c" VARCHAR(255), 
	"FinServ__Occupation__c" VARCHAR(255), 
	"FinServ__Position__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__StartDate__c" VARCHAR(255), 
	"FinServ__Contact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__FinancialAccountRole__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__Active__c" VARCHAR(255), 
	"FinServ__Editable__c" VARCHAR(255), 
	"FinServ__EndDate__c" VARCHAR(255), 
	"FinServ__Role__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__StartDate__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"FinServ__RelatedAccount__c" VARCHAR(255), 
	"FinServ__RelatedContact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrbAAC','true','false','','Primary Owner','','2020-08-20','0123h000000iFDFAA2','a083h000000xIDMAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrcAAC','true','false','','Primary Owner','','2020-08-20','0123h000000iFDFAA2','a083h000000xIDLAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrfAAC','true','false','','Primary Owner','','2020-08-20','0123h000000iFDFAA2','a083h000000xIDPAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrgAAC','true','false','','Primary Owner','','2020-08-20','0123h000000iFDFAA2','a083h000000xIDQAA2','0013h00000BGEeIAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrhAAC','true','false','','Primary Owner','','2020-08-20','0123h000000iFDFAA2','a083h000000xIDRAA2','0013h00000BGEeMAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmriAAC','true','false','','Primary Owner','','2020-06-10','0123h000000iFDFAA2','a083h000000xIDSAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrjAAC','true','false','','Primary Owner','','2020-06-10','0123h000000iFDFAA2','a083h000000xIDTAA2','0013h00000BGEeNAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrkAAC','false','true','2020-06-10','Joint Owner','','2020-06-10','0123h000000iFDFAA2','a083h000000xIDTAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrlAAC','true','false','','Joint Owner','','2020-06-10','0123h000000iFDFAA2','a083h000000xIDSAA2','0013h00000BGEeMAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrmAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDUAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrnAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDVAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmroAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDWAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrpAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDXAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrqAAC','true','false','','Joint Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDXAA2','0013h00000BGEeNAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrrAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDYAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrsAAC','true','false','','Joint Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDYAA2','0013h00000BGEeIAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmrtAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDZAA2','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccountRole__c" VALUES('a073h000002WmruAAC','true','false','','Primary Owner','','2020-12-26','0123h000000iFDFAA2','a083h000000xIDaAAM','0013h00000BGEeOAAX','',NULL);
CREATE TABLE "FinServ__FinancialAccountRole__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "FinServ__FinancialAccountRole__c_rt_mapping" VALUES('0123h000000iFDFAA2','AccountRole');
INSERT INTO "FinServ__FinancialAccountRole__c_rt_mapping" VALUES('0123h000000iFDGAA2','ContactRole');
CREATE TABLE "FinServ__FinancialAccountTransaction__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__Amount__c" VARCHAR(255), 
	"FinServ__CardAccountID__c" VARCHAR(255), 
	"FinServ__Description__c" VARCHAR(255), 
	"FinServ__DisputeReason__c" VARCHAR(255), 
	"FinServ__IsDisputed__c" VARCHAR(255), 
	"FinServ__MerchantCategoryCode__c" VARCHAR(255), 
	"FinServ__PostDate__c" VARCHAR(255), 
	"FinServ__RunningBalance__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__SourceTransactionType__c" VARCHAR(255), 
	"FinServ__TransactionDate__c" VARCHAR(255), 
	"FinServ__TransactionId__c" VARCHAR(255), 
	"FinServ__TransactionStatus__c" VARCHAR(255), 
	"FinServ__TransactionSubtype__c" VARCHAR(255), 
	"FinServ__TransactionType__c" VARCHAR(255), 
	"FinServ__WaiverReason__c" VARCHAR(255), 
	"FinServ__BillingStatements__c" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__FinancialAccount__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__APY__c" VARCHAR(255), 
	"FinServ__Address1__c" VARCHAR(255), 
	"FinServ__Address2__c" VARCHAR(255), 
	"FinServ__ApplicationDate__c" VARCHAR(255), 
	"FinServ__AssetRebalance__c" VARCHAR(255), 
	"FinServ__AverageBalance__c" VARCHAR(255), 
	"FinServ__BalanceLastStatement__c" VARCHAR(255), 
	"FinServ__Balance__c" VARCHAR(255), 
	"FinServ__BookedDate__c" VARCHAR(255), 
	"FinServ__CashBalance__c" VARCHAR(255), 
	"FinServ__City__c" VARCHAR(255), 
	"FinServ__CloseDate__c" VARCHAR(255), 
	"FinServ__ClosureReason__c" VARCHAR(255), 
	"FinServ__CollateralDesc__c" VARCHAR(255), 
	"FinServ__Country__c" VARCHAR(255), 
	"FinServ__CurrentPostedBalance__c" VARCHAR(255), 
	"FinServ__DailyWithdrawalLimit__c" VARCHAR(255), 
	"FinServ__Description__c" VARCHAR(255), 
	"FinServ__Discretionary__c" VARCHAR(255), 
	"FinServ__DrawPeriodMonths__c" VARCHAR(255), 
	"FinServ__EscrowBalance__c" VARCHAR(255), 
	"FinServ__ExpectedCloseDate__c" VARCHAR(255), 
	"FinServ__FinancialAccountNumber__c" VARCHAR(255), 
	"FinServ__FinancialAccountSource__c" VARCHAR(255), 
	"FinServ__FinancialAccountType__c" VARCHAR(255), 
	"FinServ__HardwareSerial__c" VARCHAR(255), 
	"FinServ__HeldAway__c" VARCHAR(255), 
	"FinServ__IncomingVolume__c" VARCHAR(255), 
	"FinServ__InsuredAmount__c" VARCHAR(255), 
	"FinServ__InterestRate__c" VARCHAR(255), 
	"FinServ__InvestmentObjectives__c" VARCHAR(255), 
	"FinServ__LastTransactionDate__c" VARCHAR(255), 
	"FinServ__LastUpdated__c" VARCHAR(255), 
	"FinServ__LienHolder__c" VARCHAR(255), 
	"FinServ__LoanAmount__c" VARCHAR(255), 
	"FinServ__LoanEndDate__c" VARCHAR(255), 
	"FinServ__LoanTermMonths__c" VARCHAR(255), 
	"FinServ__Managed__c" VARCHAR(255), 
	"FinServ__MinimumBalance__c" VARCHAR(255), 
	"FinServ__MinimumPayment__c" VARCHAR(255), 
	"FinServ__ModelPortfolio__c" VARCHAR(255), 
	"FinServ__NextStatementDate__c" VARCHAR(255), 
	"FinServ__Nickname__c" VARCHAR(255), 
	"FinServ__OpenDate__c" VARCHAR(255), 
	"FinServ__OutgoingVolume__c" VARCHAR(255), 
	"FinServ__OverdraftAllowed__c" VARCHAR(255), 
	"FinServ__OverdraftProtection__c" VARCHAR(255), 
	"FinServ__OwnerType__c" VARCHAR(255), 
	"FinServ__Ownership__c" VARCHAR(255), 
	"FinServ__PaperlessDelivery__c" VARCHAR(255), 
	"FinServ__PaymentAmount__c" VARCHAR(255), 
	"FinServ__PaymentFrequency__c" VARCHAR(255), 
	"FinServ__PendingDeposits__c" VARCHAR(255), 
	"FinServ__PendingWithdrawals__c" VARCHAR(255), 
	"FinServ__Performance1Yr__c" VARCHAR(255), 
	"FinServ__Performance3Yr__c" VARCHAR(255), 
	"FinServ__PerformanceMTD__c" VARCHAR(255), 
	"FinServ__PerformanceQTD__c" VARCHAR(255), 
	"FinServ__PerformanceYTD__c" VARCHAR(255), 
	"FinServ__PolicyTerm__c" VARCHAR(255), 
	"FinServ__PostalCode__c" VARCHAR(255), 
	"FinServ__Premium__c" VARCHAR(255), 
	"FinServ__PrincipalBalance__c" VARCHAR(255), 
	"FinServ__RebalanceFrequency__c" VARCHAR(255), 
	"FinServ__RenewalDate__c" VARCHAR(255), 
	"FinServ__RepaymentPeriodMonths__c" VARCHAR(255), 
	"FinServ__RoutingNumber__c" VARCHAR(255), 
	"FinServ__ServiceProvider__c" VARCHAR(255), 
	"FinServ__ServiceType__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__Stage__c" VARCHAR(255), 
	"FinServ__State__c" VARCHAR(255), 
	"FinServ__StatementFrequency__c" VARCHAR(255), 
	"FinServ__Status__c" VARCHAR(255), 
	"FinServ__TargetLimit__c" VARCHAR(255), 
	"FinServ__TaxID__c" VARCHAR(255), 
	"FinServ__TaxStatus__c" VARCHAR(255), 
	"FinServ__TimeHorizon__c" VARCHAR(255), 
	"FinServ__TotalCreditLimit__c" VARCHAR(255), 
	"FinServ__Type__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__FinancialAccountChargesAndFees__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__JointOwner__c" VARCHAR(255), 
	"FinServ__OverdraftLinkedAccount__c" VARCHAR(255), 
	"FinServ__PrimaryOwner__c" VARCHAR(255), 
	"FinServ__ProductName__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDLAA2','Bank of BAS Checking Account (Sample)','','','','','false','0.0','','100000.0','','','','','','','','','','','false','','','','','Integrator','Checking','','true','','','','','','2020-08-20','','','','','false','0.0','','','','','2018-05-27','','false','false','0013h00000BGEeOAAX','Individual','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','','','','0123h000000iFDHAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDMAA2','Investment Account (Sample)','','','','','false','0.0','','895000.0','','','','','','','','','','','false','','','','','Integrator','Brokerage','','false','','','','Growth','','','','','','','true','0.0','','Growth','','','2014-08-14','','false','false','0013h00000BGEeOAAX','Individual','true','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','Long Term','','','0123h000000iFDDAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDPAA2','Life Insurance $2M (Sample)','','','','','false','0.0','','','','','','','','','','','','','false','','','','','Manual Entry','Individual Life','','false','','2000000.0','','','','','','','','','false','0.0','','','','','','','false','false','0013h00000BGEeOAAX','Individual','false','','','','','','','','','','','','3000.0','','','','','','','','','','','','Open','','','','','','','0123h000000iFDCAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDQAA2','Cash Account (Sample)','','','','','false','0.0','','275000.0','','','','','','','','','','','false','','','','','Manual Entry','Cash Management Account','','false','','','','','','','','','','','false','0.0','','','','','','','false','false','0013h00000BGEeIAAX','Trust','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDHAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeIAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDRAA2','Investment Account (Sample)','','','','','false','0.0','','324700.0','','','','','','','','','','','false','','','','','Integrator','Discount Brokerage','','false','','','','','','','','','','','true','0.0','','','','','','','false','false','0013h00000BGEeMAAX','Individual','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','','','','0123h000000iFDDAA2','','0013h00000BGEeRAAX','','','0013h00000BGEeMAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDSAA2','Mutual Fund Investment (Sample)','','','','','false','0.0','','142000.0','','','','','','','','','','','false','','','','','Integrator','Mutual Fund','','true','','','','','','','','','','','false','0.0','','','','','2016-03-28','','false','false','0013h00000BGEeOAAX','Joint','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','','','','0123h000000iFDDAA2','','0013h00000BGEeJAAX','0013h00000BGEeMAAX','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDTAA2','Nigel''s Investment Account (Sample)','','','','','false','0.0','','300000.0','','','','','','','','','','','false','','','','','','Brokerage','','false','','','','','','','','','','','true','0.0','','','','','2019-11-03','','false','false','0013h00000BGEeNAAX','Joint','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Qualified','','','','0123h000000iFDDAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeNAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDUAA2','Savings Account (Sample)','','','','','false','0.0','0.0','5570.0','','','','','','','','','','','false','','','','','','Savings','','false','','','','','','','','','','','false','0.0','0.0','','','','2011-12-14','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFDQAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDVAA2','Checking Account (Sample)','','','','','false','0.0','0.0','7106.57','','','','','','','','','','','false','','','','','','Checking','','false','','','','','','','','','','','false','0.0','0.0','','','','2003-02-25','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDSAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDWAA2','Credit Card (Sample)','','','','','false','0.0','3550.0','3200.0','','','','','','','','','','','false','','','','','','Credit Card','','false','','','','','','','','','','','false','0.0','35.0','','','','2015-03-25','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDOAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDXAA2','Personal Loan (Sample)','','','','','false','0.0','550.0','12377.65','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','36.0','false','0.0','550.0','','','','2018-12-15','','false','false','0013h00000BGEeOAAX','Joint','false','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFDMAA2','','0013h00000BGEeJAAX','0013h00000BGEeNAAX','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDYAA2','HELOC Account (Sample)','','','','','false','0.0','0.0','7100.0','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','','false','0.0','0.0','','','','2014-12-16','','false','false','0013h00000BGEeOAAX','Joint','false','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Single Family home','0123h000000iFDPAA2','','0013h00000BGEeJAAX','0013h00000BGEeIAAX','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDZAA2','Townhome Loan (Sample)','','','','','false','0.0','0.0','25080.0','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','','false','0.0','0.0','','','','2001-12-22','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDNAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDaAAM','New Car Loan (Sample)','','','','','false','0.0','0.0','6476.99','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','','false','0.0','0.0','','','','2016-05-16','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDRAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX','',NULL);
CREATE TABLE "FinServ__FinancialAccount__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDBAA2','General');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDCAA2','InsurancePolicy');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDDAA2','InvestmentAccount');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDHAA2','BankingAccount');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDMAA2','LoanAccount');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDNAA2','Mortgage');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDOAA2','CreditCard');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDPAA2','HELOC');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDQAA2','SavingsAccount');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDRAA2','AutoLoan');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDSAA2','CheckingAccount');
INSERT INTO "FinServ__FinancialAccount__c_rt_mapping" VALUES('0123h000000iFDTAA2','TreasuryService');
CREATE TABLE "FinServ__FinancialGoal__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__ActualValue__c" VARCHAR(255), 
	"FinServ__CompletionDate__c" VARCHAR(255), 
	"FinServ__Description__c" VARCHAR(255), 
	"FinServ__InitialValue__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__Status__c" VARCHAR(255), 
	"FinServ__TargetDate__c" VARCHAR(255), 
	"FinServ__TargetValue__c" VARCHAR(255), 
	"FinServ__Type__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__PrimaryOwner__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__FinancialGoal__c" VALUES('a093h000001IEVvAAO','Tahoe Vacation Home (Sample)','280000.0','','','','','In Progress','2022-08-22','450000.0','Home Purchase','0013h00000BGEeJAAX','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialGoal__c" VALUES('a093h000001IEVwAAO','Laura''s Wedding Fund (Sample)','67000.0','','Laura is Rachel''s niece','','','In Progress','2021-08-21','100000.0','Other','0013h00000BGEeJAAX','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialGoal__c" VALUES('a093h000001IEVxAAO','Education Savings for Matt (Sample)','75000.0','','','','','In Progress','2022-08-22','300000.0','Education','0013h00000BGEeJAAX','0013h00000BGEeNAAX',NULL);
INSERT INTO "FinServ__FinancialGoal__c" VALUES('a093h000001IEVyAAO','Retirement Goals (Sample)','532000.0','','','','','In Progress','2020-05-10','540000.0','Retirement','0013h00000BGEeRAAX','0013h00000BGEeMAAX',NULL);
CREATE TABLE "FinServ__FinancialHolding__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__AssetCategoryName__c" VARCHAR(255), 
	"FinServ__AssetCategory__c" VARCHAR(255), 
	"FinServ__AssetClass__c" VARCHAR(255), 
	"FinServ__GainLoss__c" VARCHAR(255), 
	"FinServ__LastUpdated__c" VARCHAR(255), 
	"FinServ__MarketValue__c" VARCHAR(255), 
	"FinServ__PercentChange__c" VARCHAR(255), 
	"FinServ__Price__c" VARCHAR(255), 
	"FinServ__PurchasePrice__c" VARCHAR(255), 
	"FinServ__Shares__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__PrimaryOwner__c" VARCHAR(255), 
	"FinServ__Securities__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__FinancialHolding__c" VALUES('a0A3h000002WE0UEAW','CRM Holding R/A (Sample)','Large Growth','U.S. Equity','Equities','','2020-08-20','138130.0','','69.09','','2000.0','','a083h000000xIDMAA2','0013h00000BGEeJAAX','0013h00000BGEeOAAX','a0J3h000000689tEAA',NULL);
INSERT INTO "FinServ__FinancialHolding__c" VALUES('a0A3h000002WE0VEAW','AAPL Holding R/A (Sample)','Large Growth','U.S. Equity','Equities','','2020-08-20','17514.0','','116.76','','150.0','','a083h000000xIDMAA2','0013h00000BGEeJAAX','0013h00000BGEeOAAX','a0J3h000000689uEAA',NULL);
CREATE TABLE "FinServ__IdentificationDocument__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__DocumentNumber__c" VARCHAR(255), 
	"FinServ__DocumentType__c" VARCHAR(255), 
	"FinServ__ExpirationDate__c" VARCHAR(255), 
	"FinServ__IssueDate__c" VARCHAR(255), 
	"FinServ__IssuingCountry__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__VerifiedOn__c" VARCHAR(255), 
	"FinServ__Account__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__LifeEvent__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__DiscussionNote__c" VARCHAR(255), 
	"FinServ__EventDate__c" VARCHAR(255), 
	"FinServ__EventType__c" VARCHAR(255), 
	"FinServ__GoalType__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__Client__c" VARCHAR(255), 
	"FinServ__FinancialGoal__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
CREATE TABLE "FinServ__PolicyPaymentMethod__c" (
	id INTEGER NOT NULL, 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"FinServ__InsurancePolicy__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "FinServ__ReciprocalRole__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__CreateInverseRole__c" VARCHAR(255), 
	"FinServ__InverseRole__c" VARCHAR(255), 
	"FinServ__RelationshipType__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"FinServ__InverseRelationship__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XMEAY','Accountant','true','Client','','','0123h000000iFDJAA2','a0E3h00000041XSEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XNEAY','Lawyer','true','Client','','','0123h000000iFDJAA2','a0E3h00000041XTEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XOEAY','Parent','true','Dependent','','','0123h000000iFDJAA2','a0E3h00000041XUEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XPEAY','Grandparent','true','Grandchild','','','0123h000000iFDJAA2','a0E3h00000041XVEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XQEAY','Power of Attorney','true','Client','','','0123h000000iFDJAA2','a0E3h00000041XWEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XREAY','Business','true','Proprietor','','','0123h000000iFDIAA2','a0E3h00000041XXEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XSEAY','Client','false','Accountant','','','0123h000000iFDJAA2','a0E3h00000041XMEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XTEAY','Client','false','Lawyer','','','0123h000000iFDJAA2','a0E3h00000041XNEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XUEAY','Dependent','false','Parent','','','0123h000000iFDJAA2','a0E3h00000041XOEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XVEAY','Grandchild','false','Grandparent','','','0123h000000iFDJAA2','a0E3h00000041XPEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XWEAY','Client','false','Power of Attorney','','','0123h000000iFDJAA2','a0E3h00000041XQEAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XXEAY','Proprietor','false','Business','','','0123h000000iFDIAA2','a0E3h00000041XREAY',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XYEAY','Ex-Spouse','false','Ex-Spouse','','','0123h000000iFDJAA2','',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XZEAY','Spouse','false','Spouse','','','0123h000000iFDJAA2','',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XaEAI','Sibling','false','Sibling','','','0123h000000iFDJAA2','',NULL);
INSERT INTO "FinServ__ReciprocalRole__c" VALUES('a0E3h00000041XbEAI','Extended Family','false','Extended Family','','','0123h000000iFDIAA2','',NULL);
CREATE TABLE "FinServ__ReciprocalRole__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "FinServ__ReciprocalRole__c_rt_mapping" VALUES('0123h000000iFDIAA2','AccountRole');
INSERT INTO "FinServ__ReciprocalRole__c_rt_mapping" VALUES('0123h000000iFDJAA2','ContactRole');
CREATE TABLE "FinServ__Revenue__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__Amount__c" VARCHAR(255), 
	"FinServ__Date__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	"FinServ__SubType__c" VARCHAR(255), 
	"FinServ__Type__c" VARCHAR(255), 
	"FinServ__Account__c" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__Revenue__c" VALUES('a0G3h000000sPAtEAM','500.0','2020-04-23','','Transaction','Fees','','a083h000000xIDRAA2',NULL);
INSERT INTO "FinServ__Revenue__c" VALUES('a0G3h000000sPAuEAM','500.0','2020-04-15','','Planning','Commission','0013h00000BGEeOAAX','',NULL);
INSERT INTO "FinServ__Revenue__c" VALUES('a0G3h000000sPAvEAM','10.0','2020-05-14','','Advisory','Fees','0013h00000BGEeMAAX','',NULL);
INSERT INTO "FinServ__Revenue__c" VALUES('a0G3h000000sPAwEAM','1.75','2020-05-26','','Transaction','Commission','0013h00000BGEeMAAX','',NULL);
CREATE TABLE "FinServ__RollupByLookupConfig__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__Active__c" VARCHAR(255), 
	"FinServ__FromField__c" VARCHAR(255), 
	"FinServ__FromObject__c" VARCHAR(255), 
	"FinServ__FromRecordType__c" VARCHAR(255), 
	"FinServ__LookupField__c" VARCHAR(255), 
	"FinServ__Namespace__c" VARCHAR(255), 
	"FinServ__ProcessType__c" VARCHAR(255), 
	"FinServ__RollupOperation__c" VARCHAR(255), 
	"FinServ__ToField__c" VARCHAR(255), 
	"FinServ__ToObject__c" VARCHAR(255), 
	"FinServ__UpdateOnChange__c" VARCHAR(255), 
	"FinServ__WhereClause__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERXEA2','RBLForFinAcctsClientHeldJointOwner','false','Balance__c','FinancialAccount__c','','JointOwner__c','Industries','Realtime','Sum','TotalHeldFinAcctsJointOwner__c','Account','HeldAway__c','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERYEA2','RBLForFinAcctsClientHeldPrimaryOwner','false','Balance__c','FinancialAccount__c','','PrimaryOwner__c','Industries','Realtime','Sum','TotalHeldFinAcctsPrimaryOwner__c','Account','HeldAway__c','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERZEA2','RBLForFinAcctsHHHeld','true','Balance__c','FinancialAccount__c','','Household__c','Industries','Realtime','Sum','TotalHeldFinAcctsPrimaryOwner__c','Account','HeldAway__c','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERaEAM','RBLforAUMClientJointOwner','false','Balance__c','FinancialAccount__c','InvestmentAccount','JointOwner__c','Industries','','Sum','TotalAUMJointOwner__c','Account','Managed__c, Balance__c','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERbEAM','RBLforAUMHH','true','Balance__c','FinancialAccount__c','InvestmentAccount','Household__c','Industries','','Sum','TotalAUMPrimaryOwner__c','Account','Managed__c, Balance__c','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERcEAM','RBLforAUMClientPrimaryOwner','false','Balance__c','FinancialAccount__c','InvestmentAccount','PrimaryOwner__c','Industries','','Sum','TotalAUMPrimaryOwner__c','Account','Managed__c, Balance__c','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERdEAM','RBLForFARForTotalOutstandingCreditPrimaryOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalOutstandingCreditPrimaryOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zEReEAM','RBLForFARForTotalOutstandingCreditJointOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalOutstandingCreditJointOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERfEAM','RBLForTotalOutstandingCreditBankerHH','true','Balance__c','FinancialAccount__c','','Household__c','Industries','Realtime','Sum','TotalOutstandingCreditPrimaryOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERgEAM','RBLForFARForTotalNumberOfAccountsPrimaryOwner','true','FinancialAccount__r.Id','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Count','TotalNumberOfFinAccountsPrimaryOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERiEAM','RBLForFARForLastTransactionDatePrimaryOwner','true','FinancialAccount__r.LastTransactionDate__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Max','LastTransactionDatePrimaryOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERjEAM','RBLForFARForLastTransactionDateJointOwner','true','FinancialAccount__r.LastTransactionDate__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Max','LastTransactionDateJointOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERkEAM','RBLForFARForTotalBankDepositsJointOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalBankDepositsJointOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERlEAM','RBLForFARForTotalBankDepositsPrimaryOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalBankDepositsPrimaryOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERmEAM','RBLForFARForFinAcctsClientHeldJointOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalHeldFinAcctsJointOwner__c','Account','FinancialAccount__r.HeldAway__c','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERnEAM','RBLForFARForFinAcctsClientHeldPrimaryOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalHeldFinAcctsPrimaryOwner__c','Account','FinancialAccount__r.HeldAway__c','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERoEAM','RBLForFARForFinAcctsClientJointOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalFinAcctsJointOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERpEAM','RBLForFARForFinAcctsClientPrimaryOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalFinAcctsPrimaryOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERqEAM','RBLForFARForInsuranceClientJointOwner','true','FinancialAccount__r.InsuredAmount__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalInsuranceJointOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERrEAM','RBLForFARForInsuranceClientPrimaryOwner','true','FinancialAccount__r.InsuredAmount__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalInsurancePrimaryOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERsEAM','RBLForFARForInvestmentsClientJointOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalInvestmentsJointOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERtEAM','RBLForFARForInvestmentsClientPrimaryOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Sum','TotalInvestmentsPrimaryOwner__c','Account','','1 AND 2',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERuEAM','RBLForFARforAUMClientJointOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','','Sum','TotalAUMJointOwner__c','Account','FinancialAccount__r.Managed__c, FinancialAccount__r.Balance__c','1 AND 2 AND 3',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERvEAM','RBLForFARforAUMClientPrimaryOwner','true','FinancialAccount__r.Balance__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','','Sum','TotalAUMPrimaryOwner__c','Account','FinancialAccount__r.Managed__c, FinancialAccount__r.Balance__c','1 AND 2 AND 3',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERhEAM','RBLForFARForTotalNumberOfAccountsJointOwner','true','FinancialAccount__r.Id','FinancialAccountRole__c','','RelatedAccount__c','Industries','Realtime','Count','TotalNumberOfFinAccountsJointOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERwEAM','RBLForFARForInsurancePremium','true','FinancialAccount__r.Premium__c','FinancialAccountRole__c','','RelatedAccount__c','Industries','','Sum','TotalPremium__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERxEAM','RBLForBankingHH','true','Balance__c','FinancialAccount__c','','Household__c','Industries','Realtime','Sum','TotalBankDepositsPrimaryOwner__c','Account','','1',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERyEAM','RBLForTotalRevenueBanker','true','Amount__c','Revenue__c','','Account__c','Industries','Realtime','Sum','TotalRevenue__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zERzEAM','RBLForTotalNumberOfAccountsBankerHH','true','Id','FinancialAccount__c','','Household__c','Industries','Realtime','Count','TotalNumberOfFinAccountsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES0EAM','RBLForFARForLastTransactionDateHH','true','LastTransactionDate__c','FinancialAccount__c','','Household__c','Industries','Realtime','Max','LastTransactionDatePrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES1EAM','RBLForBankingClientJointOwner','false','Balance__c','FinancialAccount__c','BankingAccount','JointOwner__c','Industries','Realtime','Sum','TotalBankDepositsJointOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES2EAM','RBLForBankingClientPrimaryOwner','false','Balance__c','FinancialAccount__c','BankingAccount','PrimaryOwner__c','Industries','Realtime','Sum','TotalBankDepositsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES3EAM','RBLForFinAcctsClientJointOwner','false','Balance__c','FinancialAccount__c','','JointOwner__c','Industries','Realtime','Sum','TotalFinAcctsJointOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES4EAM','RBLForFinAcctsClientPrimaryOwner','false','Balance__c','FinancialAccount__c','','PrimaryOwner__c','Industries','Realtime','Sum','TotalFinAcctsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES5EAM','RBLForFinAcctsHHTotal','true','Balance__c','FinancialAccount__c','','Household__c','Industries','Realtime','Sum','TotalFinAcctsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES6EAM','RBLForInsuranceClientJointOwner','false','InsuredAmount__c','FinancialAccount__c','InsurancePolicy','JointOwner__c','Industries','Realtime','Sum','TotalInsuranceJointOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES7EAM','RBLForInsuranceClientPrimaryOwner','false','InsuredAmount__c','FinancialAccount__c','InsurancePolicy','PrimaryOwner__c','Industries','Realtime','Sum','TotalInsurancePrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES8EAM','RBLForInsuranceHH','true','InsuredAmount__c','FinancialAccount__c','InsurancePolicy','Household__c','Industries','Realtime','Sum','TotalInsurancePrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zES9EAM','RBLForInvestmentsClientJointOwner','false','Balance__c','FinancialAccount__c','InvestmentAccount','JointOwner__c','Industries','Realtime','Sum','TotalInvestmentsJointOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESAEA2','RBLForInvestmentsClientPrimaryOwner','false','Balance__c','FinancialAccount__c','InvestmentAccount','PrimaryOwner__c','Industries','Realtime','Sum','TotalInvestmentsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESBEA2','RBLForInvestmentsHH','true','Balance__c','FinancialAccount__c','InvestmentAccount','Household__c','Industries','Realtime','Sum','TotalInvestmentsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESCEA2','RBLForLiabilitiesClientJointOwner','false','Amount__c','AssetsAndLiabilities__c','Liability','JointOwner__c','Industries','Realtime','Sum','TotalLiabilitiesJointOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESDEA2','RBLForLiabilitiesClientPrimaryOwner','false','Amount__c','AssetsAndLiabilities__c','Liability','PrimaryOwner__c','Industries','Realtime','Sum','TotalLiabilitiesPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESEEA2','RBLForLiabilitiesHH','true','Amount__c','AssetsAndLiabilities__c','Liability','Household__c','Industries','Realtime','Sum','TotalLiabilitiesPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESFEA2','RBLForNonfinAssetsClientJointOwner','false','Amount__c','AssetsAndLiabilities__c','NonfinancialAsset','JointOwner__c','Industries','Realtime','Sum','TotalNonfinancialAssetsJointOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESGEA2','RBLForNonfinAssetsClientPrimaryOwner','false','Amount__c','AssetsAndLiabilities__c','NonfinancialAsset','PrimaryOwner__c','Industries','Realtime','Sum','TotalNonfinancialAssetsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESHEA2','RBLForNonfinAssetsHH','true','Amount__c','AssetsAndLiabilities__c','NonfinancialAsset','Household__c','Industries','Realtime','Sum','TotalNonfinancialAssetsPrimaryOwner__c','Account','','',NULL);
INSERT INTO "FinServ__RollupByLookupConfig__c" VALUES('a0H3h000002zESIEA2','RBLForInsurancePremiumHH','true','Premium__c','FinancialAccount__c','InsurancePolicy','Household__c','Industries','','Sum','TotalPremium__c','Account','','',NULL);
CREATE TABLE "FinServ__RollupByLookupFilterCriteria__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"FinServ__FieldName__c" VARCHAR(255), 
	"FinServ__FieldValue__c" VARCHAR(255), 
	"FinServ__Operator__c" VARCHAR(255), 
	"FinServ__RollupByLookupConfig__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHB5EAO','HeldAway__c','false','equals','a0H3h000002zERXEA2',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHB6EAO','HeldAway__c','false','equals','a0H3h000002zERYEA2',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHB7EAO','HeldAway__c','false','equals','a0H3h000002zERZEA2',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHB8EAO','Managed__c','true','equals','a0H3h000002zERaEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHB9EAO','Managed__c','true','equals','a0H3h000002zERbEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBAEA4','Managed__c','true','equals','a0H3h000002zERcEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBBEA4','Role__c','Primary Owner','equals','a0H3h000002zERdEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBCEA4','FinancialAccount__r.RecordType','CreditCard,Mortgage,HELOC,LoanAccount,AutoLoan','IN','a0H3h000002zERdEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBDEA4','Role__c','Joint Owner','equals','a0H3h000002zEReEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBEEA4','FinancialAccount__r.RecordType','CreditCard,Mortgage,HELOC,LoanAccount,AutoLoan','IN','a0H3h000002zEReEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBFEA4','RecordType','CreditCard,Mortgage,HELOC,LoanAccount,AutoLoan','IN','a0H3h000002zERfEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBGEA4','Role__c','Primary Owner','equals','a0H3h000002zERgEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBHEA4','Role__c','Joint Owner','equals','a0H3h000002zERhEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBIEA4','Role__c','Primary Owner','equals','a0H3h000002zERiEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBJEA4','Role__c','Joint Owner','equals','a0H3h000002zERjEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBKEA4','FinancialAccount__r.RecordType','BankingAccount,CheckingAccount,SavingsAccount','IN','a0H3h000002zERkEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBLEA4','Role__c','Joint Owner','equals','a0H3h000002zERkEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBMEA4','FinancialAccount__r.RecordType','BankingAccount,CheckingAccount,SavingsAccount','IN','a0H3h000002zERlEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBNEA4','Role__c','Primary Owner','equals','a0H3h000002zERlEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBPEA4','Role__c','Joint Owner','equals','a0H3h000002zERmEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBQEA4','FinancialAccount__r.HeldAway__c','false','equals','a0H3h000002zERnEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBREA4','Role__c','Primary Owner','equals','a0H3h000002zERnEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBSEA4','Role__c','Joint Owner','equals','a0H3h000002zERoEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBTEA4','Role__c','Primary Owner','equals','a0H3h000002zERpEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBUEA4','Role__c','Joint Owner','equals','a0H3h000002zERqEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBVEA4','FinancialAccount__r.RecordTypeName__c','Insurance Policy','equals','a0H3h000002zERqEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBWEA4','Role__c','Primary Owner','equals','a0H3h000002zERrEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBXEA4','FinancialAccount__r.RecordTypeName__c','Insurance Policy','equals','a0H3h000002zERrEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBYEA4','Role__c','Joint Owner','equals','a0H3h000002zERsEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBZEA4','FinancialAccount__r.RecordTypeName__c','Investment Account','equals','a0H3h000002zERsEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBaEAO','Role__c','Primary Owner','equals','a0H3h000002zERtEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBbEAO','FinancialAccount__r.RecordTypeName__c','Investment Account','equals','a0H3h000002zERtEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBcEAO','FinancialAccount__r.Managed__c','true','equals','a0H3h000002zERuEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBOEA4','FinancialAccount__r.HeldAway__c','false','equals','a0H3h000002zERmEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBdEAO','Role__c','Joint Owner','equals','a0H3h000002zERuEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBeEAO','FinancialAccount__r.RecordTypeName__c','Investment Account','equals','a0H3h000002zERuEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBfEAO','FinancialAccount__r.Managed__c','true','equals','a0H3h000002zERvEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBgEAO','Role__c','Primary Owner','equals','a0H3h000002zERvEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBhEAO','FinancialAccount__r.RecordTypeName__c','Investment Account','equals','a0H3h000002zERvEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBiEAO','FinancialAccount__r.RecordTypeName__c','InsurancePolicy','equals','a0H3h000002zERwEAM',NULL);
INSERT INTO "FinServ__RollupByLookupFilterCriteria__c" VALUES('a0I3h000001BHBjEAO','RecordType','BankingAccount,CheckingAccount,SavingsAccount','IN','a0H3h000002zERxEAM',NULL);
CREATE TABLE "FinServ__Securities__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FinServ__AssetCategoryName__c" VARCHAR(255), 
	"FinServ__AssetCategory__c" VARCHAR(255), 
	"FinServ__AssetClass__c" VARCHAR(255), 
	"FinServ__CUSIP__c" VARCHAR(255), 
	"FinServ__Exchange__c" VARCHAR(255), 
	"FinServ__LastUpdated__c" VARCHAR(255), 
	"FinServ__Price__c" VARCHAR(255), 
	"FinServ__SecuritiesName__c" VARCHAR(255), 
	"FinServ__SecurityId__c" VARCHAR(255), 
	"FinServ__SourceSystemId__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__Securities__c" VALUES('a0J3h000000689tEAA','CRM','Large Blend','U.S. Equity','Equities','79466L302','NYSE','2020-08-20','69.09','Salesforce.com Inc (Sample)','','',NULL);
INSERT INTO "FinServ__Securities__c" VALUES('a0J3h000000689uEAA','AAPL','Large Value','U.S. Equity','Equities','037833100','NASDAQ','2020-08-20','116.76','Apple Inc (Sample)','','',NULL);
CREATE TABLE "InsurancePolicy" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"HasAnyAutoCoverage" VARCHAR(255), 
	"IsLoanEligibile" VARCHAR(255), 
	"IsRenewedPolicy" VARCHAR(255), 
	"NameInsuredId" VARCHAR(255), 
	"ParentPolicyId" VARCHAR(255), 
	"PriorPolicyId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	"SourceOpportunityId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39dGAC','SG-2376-683 (Sample)','false','false','true','0013h00000BGEeLAAX','','','01t3h000001o9asAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39eGAC','SG-2323-654 (Sample)','false','false','false','0013h00000BGEeLAAX','','','01t3h000001o9asAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39ZGAS','SG-2545-786 (Sample)','false','false','true','0013h00000BGEeOAAX','','','01t3h000001o9atAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39aGAC','SG-567-2456 (Sample)','false','false','false','0013h00000BGEeNAAX','','','01t3h000001o9auAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39bGAC','SG-7854-283 (Sample)','false','false','false','0013h00000BGEeLAAX','','','01t3h000001o9auAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39cGAC','SG-7874-298 (Sample)','false','false','true','0013h00000BGEeLAAX','','','01t3h000001o9avAAA','0063h000007KCFfAAO',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39YGAS','SG-2323-234 (Sample)','false','false','true','0013h00000BGEeOAAX','','','01t3h000001o9asAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39fGAC','SG-2545-876 (Sample)','false','false','true','0013h00000BGEeLAAX','','','01t3h000001o9atAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39lGAC','SG-7953-280 (Sample)','false','false','false','0013h00000BGEeOAAX','','','01t3h000001o9awAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39mGAC','SG-7352-285 (Sample)','false','false','false','0013h00000BGEeLAAX','','','01t3h000001o9atAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39nGAC','SG-7953-789 (Sample)','false','false','false','0013h00000BGEeLAAX','','','01t3h000001o9awAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39oGAC','SG-2323-657 (Sample)','false','false','false','0013h00000BGEeLAAX','','','01t3h000001o9asAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39gGAC','SG-5612-981 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39hGAC','SG-0211-550 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39pGAC','SG-2377-213 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39iGAC','SG-2781-981 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39qGAC','SG-2450-731 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39rGAC','SG-2457-276 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39sGAC','SG-7966-435 (Sample)','false','false','false','0013h00000BGEeLAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39tGAC','SG-7864-285 (Sample)','false','false','false','0013h00000BGEeLAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39uGAC','SG-7967-738 (Sample)','false','false','false','0013h00000BGEeLAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39jGAC','SG-5332-563 (Sample)','false','false','false','0013h00000BGEeKAAX','','','','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39kGAC','SG-7854-223 (Sample)','false','false','true','0013h00000BGEePAAX','','','01t3h000001o9asAAA','0063h000007KCFlAAO',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39vGAC','SG-7854-124 (Sample)','false','false','false','0013h00000BGEePAAX','','','01t3h000001o9asAAA','0063h000007KCFlAAO',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39wGAC','SG-7832-121 (Sample)','false','false','false','0013h00000BGEePAAX','','','01t3h000001o9asAAA','',NULL);
INSERT INTO "InsurancePolicy" VALUES('0YT3h000000Y39xGAC','SG-7863-090 (Sample)','false','false','false','0013h00000BGEePAAX','','','01t3h000001o9avAAA','',NULL);
CREATE TABLE "Lead" (
	sf_id VARCHAR(255) NOT NULL, 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"FinServ__CreatedFromLead__c" VARCHAR(255), 
	"FinServ__Employer__c" VARCHAR(255), 
	"FinServ__ExpressedInterest__c" VARCHAR(255), 
	"FinServ__PotentialValue__c" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"IsConverted" VARCHAR(255), 
	"IsUnreadByOwner" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"FinServ__RelatedAccount__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Lead" VALUES('00Q3h0000075qyJEAQ','John','Steele (Sample)','false','false','','','','false','false','false','false','0123h000000iFCsAAM','Working','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyKEAQ','Sarah','Loehr (Sample)','false','false','','','','false','false','false','false','0123h000000iFCsAAM','Nurturing','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyLEAQ','Andy','Smith (Sample)','false','false','','','','false','false','true','false','','Qualified','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyMEAQ','David','Adelson (Sample)','false','false','','','','false','false','false','false','0123h000000iFCsAAM','Working','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyNEAQ','Neil','Symonds','false','true','Symonds Inc.','','','false','false','true','false','0123h000000iFCsAAM','Qualified','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyOEAQ','Abraham','Johnson','false','true','','','','false','false','true','false','0123h000000iFCtAAM','Qualified','','','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyPEAQ','Manisha','Jha (Sample)','false','true','Acme (Sample)','Mortgage','1705000.0','false','false','false','false','0123h000000iFCuAAM','Working - Contacted','0013h00000BGEeJAAX','0033h00000814bCAAQ','',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyQEAQ','Rachel','Adams (Sample)','false','true','','Credit Card','10000.0','false','false','false','false','0123h000000iFCuAAM','Nurturing - Contacted','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "Lead" VALUES('00Q3h0000075qyREAQ','Adam','Richman (Sample)','false','true','','Credit Card','100000.0','false','false','true','false','0123h000000iFCuAAM','Qualified','','','0013h00000BGEeLAAX',NULL);
CREATE TABLE "Lead_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFCsAAM','RetirementPlanning');
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFCtAAM','General');
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFCuAAM','Referral');
INSERT INTO "Lead_rt_mapping" VALUES('0123h000000iFDUAA2','BusinessReferral');
CREATE TABLE "Opportunity" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Budget_Confirmed__c" VARCHAR(255), 
	"CloseDate" VARCHAR(255), 
	"Discovery_Completed__c" VARCHAR(255), 
	"IsPrivate" VARCHAR(255), 
	"Loss_Reason__c" VARCHAR(255), 
	"ROI_Analysis_Completed__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"StageName" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Opportunity" VALUES('0063h000007KCFjAAO','Rachel Adam’s 30 Fixed Year Mortgage (Sample)','false','2020-08-31','false','false','','false','0123h000000iFCvAAM','Qualification','0013h00000BGEeOAAX','','','0013h00000BGEeJAAX','',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFgAAO','Retirement Planning - Expiring Options (Sample)','false','2020-06-07','false','false','','false','0123h000000iFCwAAM','Client Presentation','0013h00000BGEeMAAX','0033h00000814bEAAQ','','','',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFhAAO','Checking Account Transfer - Rachel Adams (Sample)','false','2020-06-09','false','false','','false','0123h000000iFCxAAM','Discovery','0013h00000BGEeOAAX','','a083h000000xIDLAA2','','',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFiAAO','Wallet Share Opportunity - Nigel Adams (Sample)','false','2020-09-09','false','false','','false','0123h000000iFCxAAM','Closed Won','0013h00000BGEeNAAX','','','0013h00000BGEeJAAX','',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFfAAO','Adam Richman (Sample)','false','2020-10-12','false','false','','false','0123h000000iFCvAAM','Develop Proposal','0013h00000BGEeLAAX','0033h00000814bGAAQ','','','',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFlAAO','A Richman (Sample)','false','2020-09-13','false','false','','false','0123h000000iFCvAAM','Client Presentation','0013h00000BGEePAAX','','','','',NULL);
CREATE TABLE "Opportunity_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Opportunity_rt_mapping" VALUES('0123h000000iFCvAAM','General');
INSERT INTO "Opportunity_rt_mapping" VALUES('0123h000000iFCwAAM','RetirementPlanning');
INSERT INTO "Opportunity_rt_mapping" VALUES('0123h000000iFCxAAM','WalletShareOpportunity');
CREATE TABLE "Product2" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Product2" VALUES('01t3h000001o9asAAA','Home Policy (Sample)','true',NULL);
INSERT INTO "Product2" VALUES('01t3h000001o9awAAA','Car Policy (Sample)','true',NULL);
INSERT INTO "Product2" VALUES('01t3h000001o9atAAA','Deferred Annuity - Future Safe Plan (Sample)','false',NULL);
INSERT INTO "Product2" VALUES('01t3h000001o9auAAA','Life Policy (Sample)','true',NULL);
INSERT INTO "Product2" VALUES('01t3h000001o9avAAA','Silver Auto Policy (Sample)','false',NULL);
INSERT INTO "Product2" VALUES('01t3h000001o9axAAA','Platinum Auto Policy (Sample)','false',NULL);
COMMIT;
