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
CREATE TABLE "BusinessMilestone" (
	sf_id VARCHAR(255) NOT NULL, 
	"SourceSystemIdentifier" VARCHAR(255), 
	"SourceSystem" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"MilestoneDescription" VARCHAR(255), 
	"MilestoneDate" VARCHAR(255), 
	"IsTentative" VARCHAR(255), 
	"IsExpired" VARCHAR(255), 
	"ExpirationDescription" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"MilestoneType" VARCHAR(255), 
	"MilestoneSiteId" VARCHAR(255), 
	"PrimaryAccountId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000Xgu8AAC','','','Partnered with Yelp  (Sample)','','2019-09-02T19:00:00.000Z','false','false','','','New Partnership','','0013h00000BGEeKAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000Xgu9AAC','','','Opened a new Restaurant in Manhattan  (Sample)','','2019-08-13T19:00:00.000Z','false','false','','','New Product Launch','','0013h00000BGEeKAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguAAAS','','','New Manhattan outlet Opening  (Sample)','','2019-09-30T19:00:00.000Z','false','false','','','Expansion','','0013h00000BGEeKAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguBAAS','','','Ranked Top in Brooklyn by Yelp  (Sample)','','2019-09-01T19:00:00.000Z','false','false','','','Award','','0013h00000BGEeKAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguCAAS','','','Acquired Agency','','2018-12-27T20:00:00.000Z','false','false','','','Merger & Acquisition','','0013h00000BGEeQAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguDAAS','','','APAC Expansion','','2019-12-24T20:00:00.000Z','false','false','','','Expansion','','0013h00000BGEeQAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguEAAS','','','New CEO Mark','','2018-12-30T20:00:00.000Z','false','false','','','Executive Change','','0013h00000BGEeQAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguFAAS','','','Market Listing','','2018-09-11T19:00:00.000Z','false','false','','','Market Listing','','0013h00000BGEeQAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguGAAS','','','Best Distribution Award','','2019-12-29T20:00:00.000Z','false','false','','','Award','','0013h00000BGEeQAAX',NULL);
INSERT INTO "BusinessMilestone" VALUES('0do3h000000XguHAAS','','','Incorporation','','1990-11-14T20:00:00.000Z','false','false','','','Incorporation','','0013h00000BGEeQAAX',NULL);
CREATE TABLE "Campaign" (
	sf_id VARCHAR(255) NOT NULL, 
	"Type" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"NumberSent" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"ExpectedRevenue" VARCHAR(255), 
	"ExpectedResponse" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"BudgetedCost" VARCHAR(255), 
	"ActualCost" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"CampaignMemberRecordTypeId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Campaign" VALUES('7013h000000hD21AAE','Other','Planned','2020-09-26','0.0','Widgets Webinar (Sample)','true','','0.0','2020-09-26','','','','','',NULL);
INSERT INTO "Campaign" VALUES('7013h000000hD22AAE','Email','Completed','2020-10-10','18575.0','Customer Conference - Email Invite (Sample)','true','100000.0','0.0','2020-10-16','Email invite to our conference','15500.0','20000.0','7013h000000hD23AAE','',NULL);
INSERT INTO "Campaign" VALUES('7013h000000hD23AAE','Event','Planned','2021-01-06','18575.0','Customer Conference Event (Sample)','true','225000.0','0.0','2021-01-08','Email invite to our conference','45000.0','','','',NULL);
CREATE TABLE "Case" (
	sf_id VARCHAR(255) NOT NULL, 
	"Type" VARCHAR(255), 
	"SuppliedPhone" VARCHAR(255), 
	"SuppliedName" VARCHAR(255), 
	"SuppliedEmail" VARCHAR(255), 
	"SuppliedCompany" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"IsEscalated" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Comments" VARCHAR(255), 
	"SourceId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Case" VALUES('5003h000004gnEeAAI','Question','','','','','Cannot access details(Sample)','Closed','Instructions not clear','Medium','Email','false','','','','','0033h00000814bGAAQ','0013h00000BGEeLAAX',NULL);
INSERT INTO "Case" VALUES('5003h000004gnEfAAI','Question','','','','','Can not access Legal Documents (Sample)','New','Instructions not clear','Medium','Phone','false','Nigel''s email:

The email you sent did not contain the password for the Legal documents. Could you please email that to me? Thanks.','','','','0033h00000814bDAAQ','0013h00000BGEeNAAX',NULL);
INSERT INTO "Case" VALUES('5003h000004gnEgAAI','','','','','','Instruction Not Clear','New','Instructions not clear','Medium','Email','false','','','','','0033h00000814bGAAQ','0013h00000BGEeLAAX',NULL);
INSERT INTO "Case" VALUES('5003h000004gnEhAAI','Question','','','','','Can not access Tax Documents (Sample)','Escalated','Instructions not clear','Medium','Email','false','Rachel''s email:

The email you sent did not contain the password for the tax documents. Could you please email that to me? Thanks.','','','','0033h00000814bCAAQ','0013h00000BGEeOAAX',NULL);
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
INSERT INTO "Contact" VALUES('0033h00000814bCAAQ','Snr Agent','Mr.','','78 Sam Street','CA','95126','','','','','United States','San Jose','','1 Post Street','CA','95113','','','','United States','San Jose','','Adams Charitable Trust (Sample)','','','Adam','','','','','','','','0.0','','','false','false','false','false','','','','','','','','false','false','','','','','','false','','','false','','','false','','','false','','','','','','','','','','','steve.smith@skh.com','','','','','','0123h000000iFCrAAM','','','0013h00000BGEeQAAX',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bEAAQ','Snr Agent','Mr.','','79 Jay Street','CA','95126','','','','','United States','San Jose','','1 Post Street','CA','95113','','','','United States','San Jose','','Adams Household (Sample)','','','Alisha','','','','','','','','0.0','','','false','false','false','false','','','','','','','','false','false','','','','','','false','','','false','','','false','','','false','','','','','','','','','','','steve.smith@skh.com','','','','','','0123h000000iFCrAAM','','','0013h00000BGEeQAAX',NULL);
INSERT INTO "Contact" VALUES('0033h00000814bDAAQ','Snr Agent','Mr.','','80 Tom Street','CA','95126','','','','','United States','San Jose','','1 Post Street','CA','95113','','','','United States','San Jose','','Symonds Household (Sample)','','','Symonds','','','','','','','','0.0','','','false','false','false','false','','','','','','','','false','false','','','','','','false','','','false','','','false','','','false','','','','','','','','','','','steve.smith@skh.com','','','','','','0123h000000iFCrAAM','','','0013h00000BGEeQAAX',NULL);
CREATE TABLE "Contact_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Contact_rt_mapping" VALUES('0123h000000iFCrAAM','IndustriesBusiness');
INSERT INTO "Contact_rt_mapping" VALUES('0123h000000iFD9AAM','IndustriesIndividual');
CREATE TABLE "Contract" (
	sf_id VARCHAR(255) NOT NULL, 
	"Status" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"SpecialTerms" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"OwnerExpirationNotice" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"CustomerSignedTitle" VARCHAR(255), 
	"CustomerSignedDate" VARCHAR(255), 
	"ContractTerm" VARCHAR(255), 
	"CompanySignedDate" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"CustomerSignedId" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
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
CREATE TABLE "Location" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"LocationType" VARCHAR(255), 
	"IsMobile" VARCHAR(255), 
	"IsInventoryLocation" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
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
CREATE TABLE "Opportunity" (
	sf_id VARCHAR(255) NOT NULL, 
	"Type" VARCHAR(255), 
	"StageName" VARCHAR(255),
	"Probability" VARCHAR(255), 
	"NextStep" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"IsPrivate" VARCHAR(255), 
	"ForecastCategoryName" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"CloseDate" VARCHAR(255), 
	"Amount" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"SyncedQuoteId" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"FinServ__ReferredByContact__c" VARCHAR(255), 
	"FinServ__Household__c" VARCHAR(255), 
	"FinServ__FinancialAccount__c" VARCHAR(255), 
	"CampaignId" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Opportunity" VALUES('0063h000007KCFjAAO','','Qualification','10.0','','Rachel Adam’s 30 Fixed Year Mortgage (Sample)','','false','Pipeline','','2020-08-31','100000.0','0123h000000iFCvAAM','','','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFgAAO','','Client Presentation','75.0','','Retirement Planning - Expiring Options (Sample)','','false','Pipeline','','2020-06-07','175950.0','0123h000000iFCwAAM','','','','','','','0013h00000BGEeMAAX',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFhAAO','New Business','Discovery','25.0','','Checking Account Transfer - Rachel Adams (Sample)','','false','Pipeline','','2020-06-09','100000.0','0123h000000iFCxAAM','','','','','a083h000000xIDLAA2','','0013h00000BGEeOAAX',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFiAAO','Existing Business','Closed Won','100.0','','Wallet Share Opportunity - Nigel Adams (Sample)','','false','Closed','','2020-09-09','145000.0','0123h000000iFCxAAM','','','','0013h00000BGEeJAAX','','','0013h00000BGEeNAAX',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFfAAO','','Develop Proposal','50.0','','Adam Richman (Sample)','','false','Pipeline','','2020-10-12','','0123h000000iFCvAAM','','','','','','','0013h00000BGEeLAAX',NULL);
INSERT INTO "Opportunity" VALUES('0063h000007KCFlAAO','','Client Presentation','75.0','','A Richman (Sample)','','false','Pipeline','','2020-09-13','','0123h000000iFCvAAM','','','','','','','0013h00000BGEePAAX',NULL);
CREATE TABLE "Opportunity_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Opportunity_rt_mapping" VALUES('0123h000000iFCvAAM','General');
INSERT INTO "Opportunity_rt_mapping" VALUES('0123h000000iFCwAAM','RetirementPlanning');
INSERT INTO "Opportunity_rt_mapping" VALUES('0123h000000iFCxAAM','WalletShareOpportunity');
CREATE TABLE "Pricebook2" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Pricebook2" VALUES('01s3h000002zG6GAAU','Standard Price Book','true','',NULL);
CREATE TABLE "Quote" (
	sf_id VARCHAR(255) NOT NULL, 
	"Tax" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingName" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingHandling" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"QuoteToStreet" VARCHAR(255), 
	"QuoteToState" VARCHAR(255), 
	"QuoteToPostalCode" VARCHAR(255), 
	"QuoteToName" VARCHAR(255), 
	"QuoteToLongitude" VARCHAR(255), 
	"QuoteToLatitude" VARCHAR(255), 
	"QuoteToGeocodeAccuracy" VARCHAR(255), 
	"QuoteToCountry" VARCHAR(255), 
	"QuoteToCity" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingName" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"AdditionalStreet" VARCHAR(255), 
	"AdditionalState" VARCHAR(255), 
	"AdditionalPostalCode" VARCHAR(255), 
	"AdditionalName" VARCHAR(255), 
	"AdditionalLongitude" VARCHAR(255), 
	"AdditionalLatitude" VARCHAR(255), 
	"AdditionalGeocodeAccuracy" VARCHAR(255), 
	"AdditionalCountry" VARCHAR(255), 
	"AdditionalCity" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"OpportunityId" VARCHAR(255), 
	"ContractId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
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
INSERT INTO "FinServ__ContactContactRelation__c" VALUES('a043h00000Ldg0ZAAR','true','','','','2020-06-09','0033h00000814bEAAQ','a043h00000Ldg0aAAB','0033h00000814bEAAQ','a0E3h00000041XNEAY',NULL);
INSERT INTO "FinServ__ContactContactRelation__c" VALUES('a043h00000Ldg0aAAB','true','','','','2020-06-09','0033h00000814bEAAQ','a043h00000Ldg0ZAAR','0033h00000814bEAAQ','a0E3h00000041XTEAY',NULL);
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
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDLAA2','Bank of BAS Checking Account (Sample)','','','','','false','0.0','','100000.0','','','','','','','','','','','false','','','','','Integrator','Checking','','true','','','','','','2020-08-20','','','','','false','0.0','','','','','2018-05-27','','false','false','0013h00000BGEeOAAX','Individual','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','','','','0123h000000iFDHAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDMAA2','Investment Account (Sample)','','','','','false','0.0','','895000.0','','','','','','','','','','','false','','','','','Integrator','Brokerage','','false','','','','Growth','','','','','','','true','0.0','','Growth','','','2014-08-14','','false','false','0013h00000BGEeOAAX','Individual','true','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','Long Term','','','0123h000000iFDDAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDPAA2','Life Insurance $2M (Sample)','','','','','false','0.0','','','','','','','','','','','','','false','','','','','Manual Entry','Individual Life','','false','','2000000.0','','','','','','','','','false','0.0','','','','','','','false','false','0013h00000BGEeOAAX','Individual','false','','','','','','','','','','','','3000.0','','','','','','','','','','','','Open','','','','','','','0123h000000iFDCAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDQAA2','Cash Account (Sample)','','','','','false','0.0','','275000.0','','','','','','','','','','','false','','','','','Manual Entry','Cash Management Account','','false','','','','','','','','','','','false','0.0','','','','','','','false','false','0013h00000BGEeIAAX','Trust','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDHAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeIAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDRAA2','Investment Account (Sample)','','','','','false','0.0','','324700.0','','','','','','','','','','','false','','','','','Integrator','Discount Brokerage','','false','','','','','','','','','','','true','0.0','','','','','','','false','false','0013h00000BGEeMAAX','Individual','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','','','','0123h000000iFDDAA2','','0013h00000BGEeRAAX','','','0013h00000BGEeMAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDSAA2','Mutual Fund Investment (Sample)','','','','','false','0.0','','142000.0','','','','','','','','','','','false','','','','','Integrator','Mutual Fund','','true','','','','','','','','','','','false','0.0','','','','','2016-03-28','','false','false','0013h00000BGEeOAAX','Joint','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Nonqualified','','','','0123h000000iFDDAA2','','0013h00000BGEeJAAX','0013h00000BGEeMAAX','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDTAA2','Nigel''s Investment Account (Sample)','','','','','false','0.0','','300000.0','','','','','','','','','','','false','','','','','','Brokerage','','false','','','','','','','','','','','true','0.0','','','','','2019-11-03','','false','false','0013h00000BGEeNAAX','Joint','false','','','','','','','','','','','','','','','','','','','','','','','','Open','','','Qualified','','','','0123h000000iFDDAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeNAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDUAA2','Savings Account (Sample)','','','','','false','0.0','0.0','5570.0','','','','','','','','','','','false','','','','','','Savings','','false','','','','','','','','','','','false','0.0','0.0','','','','2011-12-14','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFDQAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDVAA2','Checking Account (Sample)','','','','','false','0.0','0.0','7106.57','','','','','','','','','','','false','','','','','','Checking','','false','','','','','','','','','','','false','0.0','0.0','','','','2003-02-25','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDSAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDWAA2','Credit Card (Sample)','','','','','false','0.0','3550.0','3200.0','','','','','','','','','','','false','','','','','','Credit Card','','false','','','','','','','','','','','false','0.0','35.0','','','','2015-03-25','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDOAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDXAA2','Personal Loan (Sample)','','','','','false','0.0','550.0','12377.65','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','36.0','false','0.0','550.0','','','','2018-12-15','','false','false','0013h00000BGEeOAAX','Joint','false','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0123h000000iFDMAA2','','0013h00000BGEeJAAX','0013h00000BGEeNAAX','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDYAA2','HELOC Account (Sample)','','','','','false','0.0','0.0','7100.0','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','','false','0.0','0.0','','','','2014-12-16','','false','false','0013h00000BGEeOAAX','Joint','false','0.0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Single Family home','0123h000000iFDPAA2','','0013h00000BGEeJAAX','0013h00000BGEeIAAX','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDZAA2','Townhome Loan (Sample)','','','','','false','0.0','0.0','25080.0','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','','false','0.0','0.0','','','','2001-12-22','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDNAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
INSERT INTO "FinServ__FinancialAccount__c" VALUES('a083h000000xIDaAAM','New Car Loan (Sample)','','','','','false','0.0','0.0','6476.99','','','','','','','','','','','false','','','','','','','','false','','','','','','','','','','','false','0.0','0.0','','','','2016-05-16','','false','false','0013h00000BGEeOAAX','Individual','false','0.0','','','','','','','','','','','','','','','','','','','','','','','Open','','','','','','','0123h000000iFDRAA2','','0013h00000BGEeJAAX','','','0013h00000BGEeOAAX',NULL);
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

