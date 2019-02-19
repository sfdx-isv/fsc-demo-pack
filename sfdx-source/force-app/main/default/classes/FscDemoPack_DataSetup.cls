//─────────────────────────────────────────────────────────────────────────────────────────────────┐
/**
 * @class       FscDemoPack_DataSetup
 * @description Implements a collection of static methods that can be used to create demo data.
 * @version     1.0.0
 * @public
 */
//─────────────────────────────────────────────────────────────────────────────────────────────────┘
public class FscDemoPack_DataSetup {

  // Get the RecordType IDs for this org.
  public static Map<String,RecordType> recordTypes = getFscRecordTypeIds();

    public static void preSetupForDemoData() {
        // Pre-setup: ENable Person Account
        // Separating it because Custom Setting doesn't show in records below if inserted in same transaction
        // - Add record in FinServ__UsePersonAccount__c  Custom Setting
        // - CUstom Metadata type will be uploaded with other metadata
        // - Required otherwise PersonAccount records will not be marked as "Individual" (in FinServ__IndividualType__c) and can't be used in Financial Goal
        
        
        enablePersonAccountRecordType();
   
    }
  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createAllDemoData
   * @returns     {void}
   * @description Entrypoint method for creating all Demo Data.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void createAllDemoData() {

    // 1. Create Accounts (Person, Business, and Houshold/Group Accounts)
    // 2. Create related contacts
    // 3a. Create Account->Contact relationships (AccountContactRelation)
    // 3b. Create FSC Account->Account relationships (FinServ__AccountAccountRelation__c)
    // 3c. Create "Reciprical Roles" <--This one may be important (FinServ__ReciprocalRole__c)
    // 3d. Create "Contact-Contact Relation" records (FinServ__ContactContactRelation__c)
    // 4. Create "Financial Accounts" (FinServ__FinancialAccount__c)
    // 5. Create "Assets & Liabilities" (FinServ__AssetsAndLiabilities__c)
    // 6. Create "Financial Goals" (FinServ__FinancialGoal__c)
    // 7a. Create "Securities" (FinServ__Securities__c)
    // 7b. Create "Financial Holdings" (FinServ__FinancialHolding__c)
    // 8. Create "Reciprical Roles" <--This one may be important (FinServ__ReciprocalRole__c)
    // 9. Create "Leads and Referrals" (Lead)
    // 11. More?
   
    // 1. Create Accounts (Person, Business, and Houshold/Group Accounts)
    Map<String,Account> demoAccounts = createDemoAccounts();

    // 2. Create Contacts
    // SELECT Id, AccountId, FinServ__Affiliations__c, FinServ__Age__c, FinServ__AgeAsText__c, FinServ__AnnualIncome__c, AssistantName, AssistantPhone, FinServ__BillingAddress__c, Birthdate, Fax, Phone, FinServ__Citizenship__c, FinServ__CommunicationPreferences__c, Description, FinServ__ContactPreference__c, FinServ__CountryOfResidence__c, FinServ__CountryOfBirth__c, CreatedById, CreatedDate, FinServ__CreatedFromLead__c, FinServ__CurrentEmployer__c, FinServ__CustomerTimezone__c, Jigsaw, IsDeleted, Department, DoNotCall, Email, EmailBouncedDate, EmailBouncedReason, HasOptedOutOfEmail, FinServ__EmailVerified__c, FinServ__EmployedSince__c, FinServ__ReferredByContact__c, FinServ__Facebook__c, HasOptedOutOfFax, FinServ__FaxVerified__c, FirstName, Name, FinServ__Gender__c, FinServ__HomeOwnership__c, HomePhone, FinServ__HomePhoneVerified__c, FinServ__IndividualId__c, FinServ__IndividualType__c, FinServ__ReferredByUser__c, IsEmailBounced, IsPersonAccount, JigsawContactId, FinServ__LanguagesSpoken__c, LastActivityDate, LastModifiedById, LastModifiedDate, LastName, LastReferencedDate, LastCURequestDate, LastCUUpdateDate, LastViewedDate, LeadSource, FinServ__LinkedIn__c, FinServ__MailingAddress__c, MailingAddress, MailingCity, MailingCountry, MailingGeocodeAccuracy, MailingLatitude, MailingLongitude, MailingState, MailingStreet, MailingPostalCode, FinServ__MaritalStatus__c, FinServ__MarketingOptOut__c, MasterRecordId, MiddleName, MobilePhone, FinServ__NumberOfChildren__c, FinServ__NumberOfDependents__c, FinServ__Occupation__c, FinServ__OtherAddress__c, OtherAddress, OtherCity, OtherCountry, OtherGeocodeAccuracy, OtherLatitude, OtherLongitude, OtherPhone, OtherState, OtherStreet, OtherPostalCode, OwnerId, PhotoUrl, FinServ__PreferredName__c, FinServ__PrimaryAddressIsBilling__c, FinServ__PrimaryAddressIsMailing__c, FinServ__PrimaryAddressIsOther__c, FinServ__PrimaryAddressIsShipping__c, FinServ__PrimaryCitizenship__c, FinServ__PrimaryLanguage__c, RecordTypeId, FinServ__ReferrerScore__c, ReportsToId, Salutation, FinServ__SecondaryCitizenship__c, FinServ__SecondaryLanguage__c, FinServ__ShippingAddress__c, FinServ__SourceSystemId__c, FinServ__LastFourDigitSSN__c, Suffix, SystemModstamp, FinServ__TaxBracket__c, FinServ__TaxId__c, Title, FinServ__Twitter__c, FinServ__WeddingAnniversary__c FROM Contact
    Map<String,Contact> demoContacts = createDemoContacts(demoAccounts);

    // 3a. Create Account->Contact relationships (AccountContactRelation)
    // SELECT Id, AccountId, IsActive, ContactId, CreatedById, CreatedDate, IsDeleted, IsDirect, EndDate, FinServ__IncludeInGroup__c, LastModifiedById, LastModifiedDate, FinServ__PrimaryGroup__c, FinServ__Primary__c, Roles, FinServ__Rollups__c, FinServ__SourceSystemId__c, StartDate, SystemModstamp FROM AccountContactRelation
    createDemoAccountContactRelations(demoAccounts, demoContacts);

    // 3b. Create FSC Account->Account relationships (FinServ__AccountAccountRelation__c)
    // SELECT Account.name, Account.FinServ__IndividualType__c, AccountId, Contact.name, ContactId, StartDate, Roles, FinServ__IncludeInGroup__c, FinServ__Rollups__c, FinServ__PrimaryGroup__c, FinServ__Primary__c FROM AccountContactRelation
    createDemoAccountAccountRelations(demoAccounts);

    // 3c. Create "Reciprical Roles" <--This one may be important (FinServ__ReciprocalRole__c)
    // SELECT Name, FinServ__InverseRole__c, FinServ__CreateInverseRole__c, RecordType.Name, FinServ__RelationshipType__c, FinServ__InverseRelationship__c, FinServ__SourceSystemId__c   FROM FinServ__ReciprocalRole__c  ORDER BY FinServ__CreateInverseRole__c DESC
    //createDemoRecipricolRoles();

    // 3d. Create "Contact-Contact Relation" records (FinServ__ContactContactRelation__c)
    // SELECT Id, FinServ__Active__c, FinServ__Contact__c, Name, FinServ__EndDate__c, FinServ__ExternalId__c, FinServ__InverseRelationship__c, FinServ__RelatedContact__c, FinServ__Role__c, FinServ__SourceSystemId__c, FinServ__StartDate__c, FinServ__Contact__r.Name, FinServ__InverseRelationship__r.Name, FinServ__RelatedContact__r.Name, FinServ__Role__r.Name FROM FinServ__ContactContactRelation__c
    // createContactContactRelations(demoContacts, demoRecipricolRoles);

    // 4. Create "Financial Accounts" (FinServ__FinancialAccount__c)
    // SELECT Id, FinServ__FinancialAccountNumber__c, FinServ__Address1__c, FinServ__Address2__c, FinServ__ApplicationDate__c, FinServ__APY__c, FinServ__AssetRebalance__c, FinServ__AvailableCredit__c, FinServ__AverageBalance__c, FinServ__Balance__c, FinServ__BalanceLastStatement__c, FinServ__BookedDate__c, FinServ__CashBalance__c, FinServ__CashLimit__c, FinServ__FinancialAccountChargesAndFees__c, FinServ__City__c, FinServ__CollateralDesc__c, FinServ__Country__c, CreatedById, CreatedDate, FinServ__CurrentPostedBalance__c, FinServ__DailyWithdrawalLimit__c, FinServ__CloseDate__c, FinServ__OpenDate__c, IsDeleted, FinServ__Description__c, FinServ__Discretionary__c, FinServ__DrawPeriodMonths__c, FinServ__EscrowBalance__c, FinServ__ExpectedCloseDate__c, Name, FinServ__HeldAway__c, FinServ__Household__r.Name, FinServ__InsuredAmount__c, FinServ__InterestRate__c, FinServ__InvestmentObjectives__c, FinServ__JointOwner__r.Name, LastActivityDate, LastModifiedById, LastModifiedDate, LastReferencedDate, FinServ__LastTransactionDate__c, FinServ__LastUpdated__c, LastViewedDate, FinServ__LienHolder__c, FinServ__LoanAmount__c, FinServ__LoanEndDate__c, FinServ__LoanTermMonths__c, FinServ__Managed__c, FinServ__MinimumBalance__c, FinServ__MinimumPayment__c, FinServ__ModelPortfolio__c, FinServ__Nickname__c, FinServ__HoldingCount__c, FinServ__OverdraftLinkedAccount__c, FinServ__OverdraftAllowed__c, OwnerId, FinServ__OwnerType__c, FinServ__Ownership__c, FinServ__PaperlessDelivery__c, FinServ__PaymentAmount__c, FinServ__PaymentDueDate__c, FinServ__PaymentFrequency__c, FinServ__PendingDeposits__c, FinServ__PendingWithdrawals__c, FinServ__Performance1Yr__c, FinServ__Performance3Yr__c, FinServ__PerformanceMTD__c, FinServ__PerformanceQTD__c, FinServ__PerformanceYTD__c, FinServ__PolicyTerm__c, FinServ__PostalCode__c, FinServ__Premium__c, FinServ__PrimaryOwner__r.Name, FinServ__PrincipalBalance__c, FinServ__ProductName__c, FinServ__RebalanceFrequency__c, FinServ__RecordTypeName__c, RecordTypeId, FinServ__RenewalDate__c, FinServ__RepaymentPeriodMonths__c, FinServ__RoutingNumber__c, FinServ__ServiceProvider__c, FinServ__FinancialAccountSource__c, FinServ__SourceSystemId__c, FinServ__Stage__c, FinServ__State__c, FinServ__StatementFrequency__c, FinServ__Status__c, SystemModstamp, FinServ__TaxID__c, FinServ__TaxStatus__c, FinServ__TimeHorizon__c, FinServ__TotalCreditLimit__c, FinServ__Type__c, FinServ__FinancialAccountType__c FROM FinServ__FinancialAccount__c
    Map<String,FinServ__FinancialAccount__c> demoFinancialAccounts = createDemoFinancialAccounts(demoAccounts);

    // 5. Create "Assets & Liabilities" (FinServ__AssetsAndLiabilities__c)
    // SELECT Id, FinServ__Amount__c, Name, CreatedById, CreatedDate, IsDeleted, FinServ__Description__c, FinServ__FinancialAccount__r.Name, FinServ__Household__r.Name, FinServ__JointOwner__r.Name, LastActivityDate, LastModifiedById, LastModifiedDate, LastReferencedDate, LastViewedDate, OwnerId, FinServ__OwnerType__c, FinServ__Ownership__c, FinServ__PrimaryOwner__r.Name, RecordTypeId, FinServ__AssetsAndLiabilitiesSource__c, FinServ__SourceSystemId__c, SystemModstamp, FinServ__AssetsAndLiabilitiesType__c FROM FinServ__AssetsAndLiabilities__c
    createDemoAssetsAndLiabilities(demoAccounts, demoFinancialAccounts);

    // 6. Create "Financial Goals" (FinServ__FinancialGoal__c)
    // SELECT Name, Id, FinServ__ActualValue__c, FinServ__CompletionDate__c, FinServ__Description__c,  FinServ__Household__r.Name, FinServ__InitialValue__c, FinServ__PrimaryOwner__r.Name, FinServ__SourceSystemId__c, FinServ__Status__c, SystemModstamp, FinServ__TargetDate__c, FinServ__TargetValue__c, FinServ__Type__c FROM FinServ__FinancialGoal__c
    createDemoFinancialGoals(demoAccounts);

    // 7a. Create "Securities" (FinServ__Securities__c)
    // SELECT Name, Id, FinServ__AssetCategory__c, FinServ__AssetCategoryName__c, FinServ__AssetClass__c, FinServ__CUSIP__c, FinServ__Exchange__c, FinServ__LastUpdated__c,  FinServ__Price__c, FinServ__SecuritiesName__c, FinServ__SecurityId__c, FinServ__SourceSystemId__c  FROM FinServ__Securities__c
    Map<String,FinServ__Securities__c> demoSecurities = createDemoSecurities();

    // 7b. Create "Financial Holdings" (FinServ__FinancialHolding__c)
    // SELECT Name, Id, FinServ__FinancialAccount__r.Name,FinServ__Household__r.Name, FinServ__PrimaryOwner__r.Name, FinServ__Securities__r.FinServ__SecuritiesName__c, FinServ__AssetCategory__c, FinServ__AssetCategoryName__c, FinServ__AssetClass__c, FinServ__FinancialAccount__c, FinServ__GainLoss__c, FinServ__Household__c,  FinServ__LastUpdated__c, LastViewedDate, FinServ__MarketValue__c, FinServ__PercentChange__c, FinServ__Price__c, FinServ__PrimaryOwner__c, FinServ__PurchasePrice__c, FinServ__Shares__c, FinServ__SourceSystemId__c, FinServ__Securities__c, FinServ__Symbol__c   FROM FinServ__FinancialHolding__c
    createDemoFinancialHoldings(demoAccounts, demoFinancialAccounts, demoSecurities);

    // 9. Create "Revenue" records (FinServ__Revenue__c)
    // SELECT Id, FinServ__Account__c, FinServ__Amount__c, FinServ__Date__c, FinServ__FinancialAccount__c, Name, FinServ__SourceSystemId__c, FinServ__SubType__c, FinServ__Type__c, FinServ__Account__r.Name, FinServ__FinancialAccount__r.Name FROM FinServ__Revenue__c
    // createDemoRevenue(demoAccounts);

    // OTHER FSC DATA 

    // Card - No data
    // SELECT Id, FinServ__AccountHolder__c, FinServ__Active__c, FinServ__BinNumber__c, Name, FinServ__FinancialAccount__c, FinServ__OwnershipType__c, FinServ__ValidUntil__c, FinServ__FinancialAccount__r.Name, FinServ__AccountHolder__r.Name FROM FinServ__Card__c

    // FinancialAccountRole - Automatically populated
    // SELECT Id, FinServ__Active__c, FinServ__Editable__c, FinServ__EndDate__c, FinServ__FinancialAccount__c, RecordTypeId, FinServ__RelatedAccount__c, FinServ__RelatedContact__c, FinServ__Role__c, Name, FinServ__SourceSystemId__c, FinServ__StartDate__c, RecordType.Name, FinServ__FinancialAccount__r.Name, FinServ__RelatedAccount__r.Name, FinServ__RelatedContact__r.Name FROM FinServ__FinancialAccountRole__c

    // FinancialAccountTransactions - No data
    // SELECT Id, FinServ__Amount__c, FinServ__CardAccountID__c, FinServ__Description__c, FinServ__FinancialAccount__c, FinServ__MerchantCategoryCode__c, FinServ__PostDate__c, FinServ__RunningBalance__c, FinServ__SourceTransactionType__c, FinServ__TransactionDate__c, FinServ__TransactionId__c, Name, FinServ__TransactionStatus__c, FinServ__TransactionSubtype__c, FinServ__TransactionType__c, FinServ__FinancialAccount__r.Name FROM FinServ__FinancialAccountTransaction__c

    // Charges and Fees - No data
    // SELECT Id, FinServ__AnnualMembershipFee__c, FinServ__APR__c, FinServ__APRType__c, FinServ__ATMFee__c, FinServ__BalanceTransferAPR__c, FinServ__CashAdvanceFee__c, FinServ__CashAPR__c, FinServ__CashAPRType__c, Name, FinServ__ForeignTransactionFee__c, FinServ__LatePaymentFee__c, RecordTypeId, FinServ__ReplacementCardFee__c, FinServ__StatementFee__c, RecordType.Name FROM FinServ__ChargesAndFees__c

    // Billing Statement - No data
    // SELECT Id, FinServ__BalanceTransfers__c, FinServ__BillingPeriodEnd__c, FinServ__BillingPeriodStart__c, FinServ__CashAdvances__c, FinServ__EndingBalance__c, FinServ__FeesCharged__c, FinServ__FinancialAccount__c, FinServ__InterestThisPeriod__c, FinServ__LastPaymentDate__c, FinServ__MinimumPaymentDue__c, FinServ__OtherCredits__c, FinServ__PastDueAmount__c, FinServ__PaymentDueDate__c, FinServ__Payments__c, FinServ__PreviousBalance__c, FinServ__Purchases__c, FinServ__StatementDate__c, RecordType.Name, FinServ__FinancialAccount__r.Name FROM FinServ__BillingStatement__c

    // Education - No data
    // SELECT Id, FinServ__Contact__c, FinServ__EducationLevel__c, FinServ__GraduationDate__c, FinServ__Contact__r.Name FROM FinServ__Education__c

    // Employment - No data
    // SELECT Id, FinServ__AnnualIncome__c, FinServ__Contact__c, FinServ__EmployerAddress__c, FinServ__EmployerPhoneNumber__c, FinServ__EmploymentStatus__c, FinServ__EndDate__c, FinServ__LengthOfEmployment__c, FinServ__Occupation__c, FinServ__Position__c, FinServ__StartDate__c, FinServ__Contact__r.Name FROM FinServ__Employment__c

  }

    public static void enablePersonAccountRecordType(){
        //Enable Person Account in FSC as per https://developer.salesforce.com/docs/atlas.en-us.financial_services_cloud_admin_guide.meta/financial_services_cloud_admin_guide/fsc_admin_enable_person_acct.htm
        //Insert record in Custom Setting
        try{
            FinServ__UsePersonAccount__c usePersonAccount = new FinServ__UsePersonAccount__c();
            usePersonAccount.Name = 'Use Person Account';
            usePersonAccount.FinServ__Enable__c = true;
            insert usePersonAccount;
        }catch(System.DmlException e){
            System.debug (e.getMessage());
        }
        
    }
  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoAccountAccountRelations
   * @param       {Map<String,Account}  demoAccounts  Required. 
   * @returns     {void}
   * @description Creates any required AccountContactRelation demo records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void createDemoAccountAccountRelations(Map<String,Account> demoAccounts) {

    // Add a section break to the Debug Log
    //System.debug('==================== AccountAccountRelation Records ====================');

    // Create and initialize Map for the objects we'll create
    Map<String,FinServ__AccountAccountRelation__c> demoAccountAccountRelations = new Map<String,FinServ__AccountAccountRelation__c>();

    /*
    // NOTE: The FSC demo org did not have any Account/Account Relations in it
    // Define Account/Account Relationship for "?????" to "??????"
    demoAccountAccountRelations.put('Adams_Trust_to_Rachel_Adams', new AccountContactRelation(
      // Add Fields Here
    ));
    //*/
    return;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoAccountContactRelations
   * @param       {Map<String,Account}  demoAccounts  Required. 
   * @param       {Map<String,Contact}  demoContacts  Required. 
   * @returns     {void}
   * @description Creates any required AccountContactRelation demo records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void createDemoAccountContactRelations(Map<String,Account> demoAccounts, Map<String,Contact> demoContacts) {

    // Add a section break to the Debug Log
    System.debug('==================== AccountContactRelation Records ====================');

    // Create and initialize Map collection
    Map<String,AccountContactRelation> demoAccountContactRelations = new Map<String,AccountContactRelation>();

    //*
    // Define Account/Contact Relationship for "Adams Charitable Trust" to "Rachel Adams"
    demoAccountContactRelations.put('Adams_Trust_to_Rachel_Adams', new AccountContactRelation(
      AccountId                   = demoAccounts.get('Adams_Charitable_Trust').Id,
      ContactId                   = demoContacts.get('Rachel_Adams').Id,
      IsActive                    = true,
      StartDate                   = Date.today(),
      Roles                       = 'Trustee',
      FinServ__Rollups__c         = 'Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities',
      FinServ__IncludeInGroup__c  = true,
      FinServ__PrimaryGroup__c    = false,
      FinServ__Primary__c         = false
    ));
    //*/
    //*
    // Define Account/Contact Relationship for "Symonds Household" to "Rachel Adams"
    demoAccountContactRelations.put('Symonds_Household_to_Rachel_Adams', new AccountContactRelation(
      AccountId                   = demoAccounts.get('Symonds_Household').Id,
      ContactId                   = demoContacts.get('Rachel_Adams').Id,
      IsActive                    = true,
      StartDate                   = Date.today(),
      Roles                       = 'Beneficiary',
      FinServ__IncludeInGroup__c  = false,
      FinServ__PrimaryGroup__c    = false,
      FinServ__Primary__c         = false
    ));
    //*/
    //*
    // Define Account/Contact Relationship for "Symonds Household" to "Neil Symonds"
    demoAccountContactRelations.put('Symonds_Household_to_Neil_Symonds', new AccountContactRelation(
      AccountId                   = demoAccounts.get('Symonds_Household').Id,
      ContactId                   = demoContacts.get('Neil_Symonds').Id,
      IsActive                    = true,
      StartDate                   = Date.today(),
      Roles                       = 'Client',
      FinServ__Rollups__c         = 'Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities',
      FinServ__IncludeInGroup__c  = false,
      FinServ__PrimaryGroup__c    = true,
      FinServ__Primary__c         = true
    ));
    //*/
    //*
    // Define Account/Contact Relationship for "Adams Household" to "Rachel Adams"
    demoAccountContactRelations.put('Adams_Household_to_Rachel_Adams', new AccountContactRelation(
      AccountId                   = demoAccounts.get('Adams_Household').Id,
      ContactId                   = demoContacts.get('Rachel_Adams').Id,
      IsActive                    = true,
      StartDate                   = Date.today(),
      Roles                       = 'Client',
      FinServ__Rollups__c         = 'Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities',
      FinServ__IncludeInGroup__c  = false,
      FinServ__PrimaryGroup__c    = true,
      FinServ__Primary__c         = true 
    ));
    //*/
    //*
    // Define Account/Contact Relationship for "Adams Household" to "Nigel Adams"
    demoAccountContactRelations.put('Adams_Household_to_Nigel_Adams', new AccountContactRelation(
      AccountId                   = demoAccounts.get('Adams_Household').Id,
      ContactId                   = demoContacts.get('Nigel_Adams').Id,
      IsActive                    = true,
      StartDate                   = Date.today(),
      Roles                       = 'Spouse',
      FinServ__Rollups__c         = 'Tasks;Events;Financial Accounts;Assets and Liabilities;Financial Goals;All;Referrals;Opportunities',
      FinServ__IncludeInGroup__c  = false,
      FinServ__PrimaryGroup__c    = true,
      FinServ__Primary__c         = false
    ));
    //*/

    // Insert the AccountContactRelation Objects
    INSERT demoAccountContactRelations.values();

    // Debug
    System.debug('Adams Charitable Trust to Rachel Adams: ' + demoAccountContactRelations.get('Adams_Trust_to_Rachel_Adams'));
    System.debug('Symonds Household to Rachel Adams: '      + demoAccountContactRelations.get('Symonds_Household_to_Rachel_Adams'));
    System.debug('Symonds Household to Neil Symonds: '      + demoAccountContactRelations.get('Symonds_Household_to_Neil_Symonds'));
    System.debug('Adams Household to Rachel Adams: '        + demoAccountContactRelations.get('Adams_Household_to_Rachel_Adams'));
    System.debug('Adams Household to Nigel Adams: '         + demoAccountContactRelations.get('Adams_Household_to_Nigel_Adams'));

    return;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoAccounts
   * @returns     {Map<String,Account>}
   * @description Creates a mix of business, peronsal, and household accounts.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Map<String,Account> createDemoAccounts() {

    // Add a section break to the Debug Log
    System.debug('==================== Account Records ====================');

    // Determine the Record Type ID for Person Accounts in this org.
    //Id personAccountRecordTypeId = recordTypes.get('PersonAccount_Account').id;//getPersonAccountRecordTypeId(); //'012L0000000I0leIAC';

    // Create and initialize the Map collection for our Demo Accounts.
    Map<String, Account> demoAccountMap = new Map<String, Account>();

    // Define Person Account for "Neil Symonds"
    demoAccountMap.put('Neil_Symonds', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('PersonAccount_Account').id,
      // Core Account Info
      FirstName                                           = 'Neil',
      LastName                                            = 'Symonds (Sample)',
      PersonBirthdate                                     = Date.parse('06/29/1948'),
      PersonEmail                                         = 'neil.symonds@symonds.com',
      Rating                                              = 'Hot',
      Salutation                                          = 'Mr.',
      Type                                                = 'Customer',
      // Phone Numbers
      Phone                                               = '5105490092',
      PersonMobilePhone                                   = '5105490091',
      PersonOtherPhone                                    = '5107174299',
      PersonHomePhone                                     = '5109798658',
      // Person Mailing Address
      PersonMailingStreet                                 = '10021 South Blaney Avenue',
      PersonMailingCity                                   = 'Cupertino',
      PersonMailingState                                  = 'CA',
      PersonMailingPostalCode                             = '95014',
      PersonMailingCountry                                = 'United States',
      PersonMailingGeocodeAccuracy                        = null,
      PersonMailingLatitude                               = null,
      PersonMailingLongitude                              = null,
      // Person Other Address
      PersonOtherStreet                                   = '142 Sansome Street',
      PersonOtherCity                                     = 'San Francisco',
      PersonOtherState                                    = 'CA',
      PersonOtherPostalCode                               = '94104',
      PersonOtherCountry                                  = 'United States',
      PersonOtherGeocodeAccuracy                          = null,
      PersonOtherLatitude                                 = null,
      PersonOtherLongitude                                = null,
      // Business Shipping Address
      ShippingStreet                                      = '552 Grant Avenue',
      ShippingCity                                        = 'San Francisco',
      ShippingState                                       = 'CA',
      ShippingPostalCode                                  = '94108',
      ShippingCountry                                     = 'United States',
      ShippingGeocodeAccuracy                             = null,
      ShippingLatitude                                    = null,
      ShippingLongitude                                   = null,
      // FSC Fields
      FinServ__ClientCategory__c                          = 'Gold', // picklist
      FinServ__CreatedFromLead__pc                        = false, // checkbox
      FinServ__CurrentEmployer__pc                        = 'Symonds Inc.', // text(255)
      FinServ__EmailVerified__pc                          = false, // checkbox
      FinServ__FaxVerified__pc                            = false, // checkbox
      FinServ__FinancialInterests__c                      = 'Fixed Income;Energy;Technology', // picklist (multi-select)
      FinServ__HomePhoneVerified__pc                      = false, // checkbox
      FinServ__IndividualType__c                          = 'Individual', // picklist
      FinServ__IndividualType__pc                         = 'Individual', // picklist
      FinServ__InvestmentExperience__c                    = 'Moderately Inexperienced', // picklist
      FinServ__InvestmentObjectives__c                    = 'Balanced;Growth', // picklist
      FinServ__LastInteraction__c                         = Date.parse('09/20/2018'), // date
      FinServ__LastUsedChannel__c                         = '', // picklist
      FinServ__LifetimeValue__c                           = 0.00, // currency(16,2)
      FinServ__LinkedIn__pc                               = '', // URL(255)
      FinServ__MarketingOptOut__pc                        = false, // checkbox
      FinServ__MarketingSegment__c                        = 'High Net Worth', // picklist (multi-select)
      FinServ__NetWorth__c                                = 500000, // currency(16,2)
      FinServ__NextInteraction__c                         = Date.parse('09/23/2018'), // date
      FinServ__PersonalInterests__c                       = 'Environment', // picklist(multi select)
      FinServ__PrimaryAddressIsBilling__pc                = false, // checkbox
      FinServ__PrimaryAddressIsMailing__pc                = false, // checkbox
      FinServ__PrimaryAddressIsOther__pc                  = false, // checkbox
      FinServ__PrimaryAddressIsShipping__pc               = false, // checkbox
      FinServ__ReferrerScore__pc                          = 0, // number(16,2)
      FinServ__ReviewFrequency__c                         = 'Quarterly', // picklist
      FinServ__RiskTolerance__c                           = 'Conservative', // picklist
      FinServ__ServiceModel__c                            = 'Tier 2', // picklist
      FinServ__Status__c                                  = 'Prospect', // picklist
      FinServ__TimeHorizon__c                             = 'Medium Term', // picklist
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 324700, // currency(16,2)
      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 0, // currency(16,2)
      FinServ__TotalFinAcctsJointOwner__c                 = 142000, // currency(16,2)
      FinServ__TotalFinAcctsPrimaryOwner__c               = 324700, // currency(16,2)
      FinServ__TotalHeldFinAcctsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalHeldFinAcctsPrimaryOwner__c           = 324700, // currency(16,2)
      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsJointOwner__c              = 142000, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 324700, // currency(16,2)
      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 0, // currency(16,2)
      FinServ__TotalNumberOfFinAccountsJointOwner__c      = 1, // number(16,0)
      FinServ__TotalNumberOfFinAccountsPrimaryOwner__c    = 1, // number(16,0)
      FinServ__TotalOutstandingCreditJointOwner__c        = 0, // currency(16,2)
      FinServ__TotalOutstandingCreditPrimaryOwner__c      = 0, // currency(16,2)
      FinServ__TotalRevenue__c                            = 11.75 // currency(16,2)
    ));

    // Define Person Account for "Rachel Adams"
    demoAccountMap.put('Rachel_Adams', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('PersonAccount_Account').id,
      // Core Account Info
      FirstName                                           = 'Rachel',
      LastName                                            = 'Adams (Sample)',
      PersonBirthdate                                     = Date.parse('09/28/1967'),
      PersonEmail                                         = 'rachel@acmecorp.com',
      Rating                                              = 'Hot',
      Salutation                                          = 'Mrs.',
      Type                                                = 'Customer',
      // Phone Numbers
      Phone                                               = '5001450557',
      PersonMobilePhone                                   = '5001450558',
      PersonOtherPhone                                    = '5107174299',
      PersonHomePhone                                     = '5009798658',
      // Person Mailing Address
      PersonMailingStreet                                 = '170 Post Street',
      PersonMailingCity                                   = 'San Francisco',
      PersonMailingState                                  = 'CA',
      PersonMailingPostalCode                             = '94108',
      PersonMailingCountry                                = 'United States',
      PersonMailingGeocodeAccuracy                        = null,
      PersonMailingLatitude                               = null,
      PersonMailingLongitude                              = null,
      // Person Other Address
      PersonOtherStreet                                   = '142 Sansome Street',
      PersonOtherCity                                     = 'San Francisco',
      PersonOtherState                                    = 'CA',
      PersonOtherPostalCode                               = '94104',
      PersonOtherCountry                                  = 'United States',
      PersonOtherGeocodeAccuracy                          = null,
      PersonOtherLatitude                                 = null,
      PersonOtherLongitude                                = null,
      // Business Shipping Address
      ShippingStreet                                      = '552 Grant Avenue',
      ShippingCity                                        = 'San Francisco',
      ShippingState                                       = 'CA',
      ShippingPostalCode                                  = '94108',
      ShippingCountry                                     = 'United States',
      ShippingGeocodeAccuracy                             = null,
      ShippingLatitude                                    = null,
      ShippingLongitude                                   = null,
      // FSC Fields
      FinServ__AnnualIncome__pc                           = 400000, // currency(18,0)
      FinServ__ClientCategory__c                          = 'Gold', // picklist
      FinServ__CreatedFromLead__pc                        = false, // checkbox
      FinServ__CurrentEmployer__pc                        = 'ACME Inc', // text(255)
      FinServ__CustomerSegment__c                         = 'Mass Affluent;Long Term Growth', // picklist(multi-select)
      FinServ__EmailVerified__pc                          = false, // checkbox
      FinServ__EmployedSince__pc                          = Date.parse('08/13/2014'), // date
      FinServ__FaxVerified__pc                            = false, // checkbox
      FinServ__FinancialInterests__c                      = 'Fixed Income;Technology;Retirement;College Planning', // picklist (multi-select)
      FinServ__HomePhoneVerified__pc                      = false, // checkbox
      FinServ__IndividualType__c                          = 'Individual', // picklist
      FinServ__IndividualType__pc                         = 'Individual', // picklist
      FinServ__InvestmentExperience__c                    = 'Experienced', // picklist
      FinServ__InvestmentObjectives__c                    = 'Income;Balanced;Growth', // picklist
      FinServ__KYCDate__c                                 = Date.parse('03/27/2018'), // date
      FinServ__KYCStatus__c                               = 'Completed - Valid', // picklist
      FinServ__LanguagesSpoken__pc                        = 'English, Arabic, Spanish, French', // text(80)
      FinServ__LastFourDigitSSN__pc                       = '0606', // text(4)
      FinServ__LastInteraction__c                         = Date.parse('10/23/2018'), // date
      FinServ__LastReview__c                              = Date.parse('09/09/2018'), // date
      FinServ__MaritalStatus__pc                          = 'Married', // picklist
      FinServ__MarketingOptOut__pc                        = false, // checkbox
      FinServ__MarketingSegment__c                        = 'High Net Worth;Female Investor', // picklist (multi-select)
      FinServ__NetWorth__c                                = 3500000, // currency(16,2)
      FinServ__NextInteraction__c                         = Date.parse('09/15/2018'), // date
      FinServ__NextReview__c                              = Date.parse('10/10/2018'), // date
      FinServ__Notes__c                                   = 'Rachel is participating in a triathlon soon. She is a fitness enthusiast.', // text area(255)
      FinServ__Occupation__pc                             = 'SVP, Practices', // text(80)
      FinServ__PersonalInterests__c                       = 'Cooking;Wine', // picklist(multi select)
      FinServ__PreferredName__pc                          = 'Rachel', // text(80)
      FinServ__PrimaryAddressIsBilling__pc                = false, // checkbox
      FinServ__PrimaryAddressIsMailing__pc                = false, // checkbox
      FinServ__PrimaryAddressIsOther__pc                  = false, // checkbox
      FinServ__PrimaryAddressIsShipping__pc               = false, // checkbox
      FinServ__PrimaryCitizenship__pc                     = 'United States', // picklist
      FinServ__ReferrerScore__pc                          = 0, // number(16,2)
      FinServ__ReviewFrequency__c                         = 'Monthly', // picklist
      FinServ__RiskTolerance__c                           = 'Moderate', // picklist
      FinServ__SecondaryCitizenship__pc                   = 'Andorra', // picklist
      FinServ__ServiceModel__c                            = 'Tier 1', // picklist
      FinServ__Status__c                                  = 'Active', // picklist
      FinServ__TaxBracket__pc                             = '33%', // picklist
      FinServ__TimeHorizon__c                             = 'Long Term', // picklist
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 895000, // currency(16,2)
      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 112676.57, // currency(16,2)
      FinServ__TotalFinAcctsJointOwner__c                 = 0, // currency(16,2)
      FinServ__TotalFinAcctsPrimaryOwner__c               = 1203911.21, // currency(16,2)
      FinServ__TotalHeldFinAcctsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalHeldFinAcctsPrimaryOwner__c           = 961911.21, // currency(16,2)
      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 2000000, // currency(16,2)
      FinServ__TotalInvestmentsJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 1037000, // currency(16,2)
      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 25000, // currency(16,2)
      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 1000000, // currency(16,2)
      FinServ__TotalNumberOfFinAccountsJointOwner__c      = 0, // number(16,0)
      FinServ__TotalNumberOfFinAccountsPrimaryOwner__c    = 11, // number(16,0)
      FinServ__TotalOutstandingCreditJointOwner__c        = 0, // currency(16,2)
      FinServ__TotalOutstandingCreditPrimaryOwner__c      = 54234.64, // currency(16,2)
      FinServ__TotalRevenue__c                            = 500, // currency(16,2)
      FinServ__WeddingAnniversary__pc                     = Date.parse('08/10/1989') // date
    ));

    // Define Person Account for "Nigel Adams"
    demoAccountMap.put('Nigel_Adams', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('PersonAccount_Account').id,
      // Core Account Info
      FirstName                                           = 'Nigel',
      LastName                                            = 'Adams (Sample)',
      PersonBirthdate                                     = Date.parse('10/01/1965'),
      Salutation                                          = 'Mr.',
      // FSC Fields
      FinServ__CreatedFromLead__pc                        = false, // checkbox
      FinServ__EmailVerified__pc                          = false, // checkbox
      FinServ__FaxVerified__pc                            = false, // checkbox
      FinServ__HomePhoneVerified__pc                      = false, // checkbox
      FinServ__MarketingOptOut__pc                        = false, // checkbox
      FinServ__PrimaryAddressIsBilling__pc                = false, // checkbox
      FinServ__PrimaryAddressIsMailing__pc                = false, // checkbox
      FinServ__PrimaryAddressIsOther__pc                  = false, // checkbox
      FinServ__PrimaryAddressIsShipping__pc               = false, // checkbox
      FinServ__PrimaryCitizenship__pc                     = 'United States', // picklist
      FinServ__Status__c                                  = 'Active', // picklist
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 300000, // currency(16,2)
      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 0, // currency(16,2)
      FinServ__TotalFinAcctsJointOwner__c                 = 12377.65, // currency(16,2)
      FinServ__TotalFinAcctsPrimaryOwner__c               = 300000, // currency(16,2)
      FinServ__TotalHeldFinAcctsJointOwner__c             = 12377.65, // currency(16,2)
      FinServ__TotalHeldFinAcctsPrimaryOwner__c           = 300000, // currency(16,2)
      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 300000, // currency(16,2)
      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 1000000, // currency(16,2)
      FinServ__TotalNumberOfFinAccountsJointOwner__c      = 1, // number(16,0)
      FinServ__TotalNumberOfFinAccountsPrimaryOwner__c    = 1, // number(16,0)
      FinServ__TotalOutstandingCreditJointOwner__c        = 12377.65, // currency(16,2)
      FinServ__TotalOutstandingCreditPrimaryOwner__c      = 0, // currency(16,2)
      FinServ__TotalRevenue__c                            = 500 // currency(16,2)
    ));

    // Define Business Account for "Smith, Kohl and Company (Sample)"
    demoAccountMap.put('Smith_Kohl_Company', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('IndustriesBusiness_Account').id,
      // Core Account Info
      Name                                                = 'Smith, Kohl and Company (Sample)',
      NumberOfEmployees                                   = 35,
      Type                                                = 'Other',
      Industry                                            = 'Other',
      // FSC Fields
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 0, // currency(16,2)
      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 0, // currency(16,2)
      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 0, // currency(16,2)
      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 0  // currency(16,2)
    ));

    // Define Household Account for "Symonds Household (Sample)"
    demoAccountMap.put('Symonds_Household', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('IndustriesHousehold_Account').id,
      // Core Account Info
      Name                                                = 'Symonds Household (Sample)',
      // FSC Fields
      FinServ__Notes__c                                   = 'Rachel\'s parents\' household', // text area(255)
      FinServ__IndividualType__c                          = 'Group', // picklist
      FinServ__LastInteraction__c                         = Date.parse('09/20/2018'), // date
      FinServ__NextInteraction__c                         = Date.parse('09/23/2018'), // date
      FinServ__TotalNumberOfFinAccountsPrimaryOwner__c    = 1, // number(16,0)
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 324700, // currency(16,2)
      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 0, // currency(16,2)
      FinServ__TotalFinAcctsPrimaryOwner__c               = 324700, // currency(16,2)
      FinServ__TotalHeldFinAcctsPrimaryOwner__c           = 324700, // currency(16,2)
      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 2000000, // currency(16,2)
      FinServ__TotalInvestmentsJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 0, // currency(16,2)
      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 324700, // currency(16,2)
      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 0  // currency(16,2)
    ));

    // Define Business Account for "Adams Charitable Trust (Sample)"
    demoAccountMap.put('Adams_Charitable_Trust', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('IndustriesInstitution_Account').id,
      // Core Account Info
      Name                                                = 'Adams Charitable Trust (Sample)',
      NumberOfEmployees                                   = 1999,
      Industry                                            = 'Not For Profit',
      Phone                                               = '5107174299',
      // Billing Address
      BillingStreet                                      = '10 Romolo Place',
      BillingCity                                        = 'San Francisco',
      BillingState                                       = 'CA',
      BillingPostalCode                                  = '94133',
      BillingCountry                                     = 'United States',
      // Shipping Address
      ShippingStreet                                      = 'Adams Avenue',
      ShippingCity                                        = 'Milpitas',
      ShippingState                                       = 'CA',
      ShippingPostalCode                                  = '95035',
      ShippingCountry                                     = 'United States',
      // FSC Fields
      FinServ__Notes__c                                   = 'Rachel Adams is highly involved in the activities of this trust.', // text area(255)
      FinServ__TotalNumberOfFinAccountsJointOwner__c      = 1, // number(16,0)
      FinServ__TotalNumberOfFinAccountsPrimaryOwner__c    = 1, // number(16,0)
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 0, // currency(16,2)

      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 275000, // currency(16,2)

      FinServ__TotalFinAcctsJointOwner__c                 = 7100, // currency(16,2)
      FinServ__TotalFinAcctsPrimaryOwner__c               = 275000, // currency(16,2)

      FinServ__TotalHeldFinAcctsJointOwner__c             = 7100, // currency(16,2)
      FinServ__TotalHeldFinAcctsPrimaryOwner__c           = 275000, // currency(16,2)

      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 0, // currency(16,2)

      FinServ__TotalInvestmentsJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 0, // currency(16,2)

      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 0, // currency(16,2)

      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 0,  // currency(16,2)

      FinServ__TotalOutstandingCreditJointOwner__c        = 7100, // currency(16,2)
      FinServ__TotalOutstandingCreditPrimaryOwner__c      = 0 // currency(16,2)
    ));

    // Define Household Account for "Adams Household (Sample)"
    demoAccountMap.put('Adams_Household', new Account(
      // Record Type
      RecordTypeId                                        = recordTypes.get('IndustriesHousehold_Account').id,
      // Core Account Info
      Name                                                = 'Adams Household (Sample)',
      // FSC Fields
      FinServ__Notes__c                                   = 'Adams Family is a highly valued, high net worth household.', // text area(255)
      FinServ__IndividualType__c                          = 'Group', // picklist
      FinServ__LastInteraction__c                         = Date.parse('10/23/2018'), // date
      FinServ__NextInteraction__c                         = Date.parse('09/15/2019'), // date
      FinServ__TotalNumberOfFinAccountsPrimaryOwner__c    = 13, // number(16,0)
      FinServ__TotalAUMJointOwner__c                      = 0, // currency(16,2)
      FinServ__TotalAUMPrimaryOwner__c                    = 1195000, // currency(16,2)
      FinServ__TotalBankDepositsJointOwner__c             = 0, // currency(16,2)
      FinServ__TotalBankDepositsPrimaryOwner__c           = 387676.57, // currency(16,2)
      FinServ__TotalFinAcctsPrimaryOwner__c               = 1778911.21, // currency(16,2)
      FinServ__TotalHeldFinAcctsPrimaryOwner__c           = 1536911.21, // currency(16,2)
      FinServ__TotalInsuranceJointOwner__c                = 0, // currency(16,2)
      FinServ__TotalInsurancePrimaryOwner__c              = 2000000, // currency(16,2)
      FinServ__TotalInvestmentsJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalInvestmentsPrimaryOwner__c            = 1337000, // currency(16,2)
      FinServ__TotalLiabilitiesJointOwner__c              = 0, // currency(16,2)
      FinServ__TotalLiabilitiesPrimaryOwner__c            = 25000, // currency(16,2)
      FinServ__TotalNonfinancialAssetsJointOwner__c       = 0, // currency(16,2)
      FinServ__TotalNonfinancialAssetsPrimaryOwner__c     = 1000000,  // currency(16,2)
      FinServ__TotalOutstandingCreditPrimaryOwner__c      = 54234.64, // currency(16,2)
      FinServ__TotalPremium__c                            = 3000 // currency(18,2)
    ));

    // Insert the Person Account Objects
    INSERT demoAccountMap.values();

    // Debug
    System.debug('Neil Symonds Account: '           + demoAccountMap.get('Neil_Symonds'));
    System.debug('Rachel Adams Account: '           + demoAccountMap.get('Rachel_Adams'));
    System.debug('Nigel Adams Account: '            + demoAccountMap.get('Nigel_Adams'));
    System.debug('Smith, Kohl & Company Account: '  + demoAccountMap.get('Smith_Kohl_Company'));
    System.debug('Symonds Household Account: '      + demoAccountMap.get('Symonds_Household'));
    System.debug('Adams Charitable Trust Account: ' + demoAccountMap.get('Adams_Charitable_Trust'));
    System.debug('Adams Household Account: '        + demoAccountMap.get('Adams_Household'));

    // Return the Demo Accounts to the caller
    return demoAccountMap;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoAssetsAndLiabilities
   * @param       {Map<String,Account>}  demoAccounts  Required. 
   * @param       {Map<String,FinServ__FinancialAccount__c>}  demoFinancialAccounts  Required. 
   * @returns     {void}
   * @description Creates any required FinServ__AssetsAndLiabilities__c demo records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void createDemoAssetsAndLiabilities(Map<String,Account> demoAccounts, Map<String,FinServ__FinancialAccount__c> demoFinancialAccounts) {

    // Add a section break to the Debug Log
    System.debug('==================== FinServ__AssetsAndLiabilities__c Records ====================');

    // Create and initialize the Map collection for our Demo Contacts.
    Map<String, FinServ__AssetsAndLiabilities__c> demoAssetsAndLiabilities = new Map<String, FinServ__AssetsAndLiabilities__c>();

    // Define Assets and Liabilities record for "Adams Household - Auto Loan (Liability)"
    demoAssetsAndLiabilities.put('Adams_Household_AutoLoanLiability', new FinServ__AssetsAndLiabilities__c(
      Name                                  = 'Auto Loan (Sample)',
      RecordTypeId                           = recordTypes.get('Liability_FinServ__AssetsAndLiabilities__c').id,
      FinServ__Amount__c                    = 25000,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__AssetsAndLiabilitiesType__c  = 'Auto Loan'
    ));

    // Define Assets and Liabilities record for "Adams Household - House (Asset)"
    demoAssetsAndLiabilities.put('Adams_Household_HouseAsset', new FinServ__AssetsAndLiabilities__c(
      Name                                  = 'Adams\' House (Sample)',
      RecordTypeId                          = recordTypes.get('NonfinancialAsset_FinServ__AssetsAndLiabilities__c').id,
      FinServ__Amount__c                    = 1000000,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Nigel_Adams').id, // TODO: Something is wrong with Nigel that is tripping FSC validation errors here.
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__Ownership__c                 = 'Joint',
      FinServ__AssetsAndLiabilitiesType__c  = 'Real Estate'
    ));

    // Insert the Asset and Liability Objects
    INSERT demoAssetsAndLiabilities.values();

    // Debug
    System.debug('Adams Household - Auto Loan (Liability) - Assets & Liabilities: ' + demoAssetsAndLiabilities.get('Adams_Household_AutoLoanLiability'));
    System.debug('Adams Household - House (Asset) - Assets & Liabilities: '         + demoAssetsAndLiabilities.get('Adams_Household_HouseAsset'));

    return;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoContacts
   * @param       {Map<String,Account}  demoAccounts  Required. 
   * @returns     {Map<String,Contact>}
   * @description Given a map containing previously created Demo Accounts, 
   *              create Demo Contacts and makes proper associations.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Map<String,Contact> createDemoContacts(Map<String,Account> demoAccounts) {

    // Add a section break to the Debug Log
    System.debug('==================== Contact Records ====================');

    // Create and initialize the Map collection for our Demo Contacts.
    Map<String, Contact> demoContactMap = new Map<String, Contact>();

    // Define Contact for Ivan Kohl.
    demoContactMap.put('Ivan_Kohl', new Contact(
      // Core Contact Info
      AccountId                             = demoAccounts.get('Smith_Kohl_Company').Id,
      Salutation                            = 'Mr.',
      FirstName                             = 'Ivan',
      LastName                              = 'Kohl (Sample)',
      //Name                                  = 'Ivan M Kohl (Sample)',
      Email                                 = 'ivan.kohl@skh.com',
      MailingCity                           = 'San Jose',
      MailingCountry                        = 'United States',
      MailingState                          = 'CA',
      MailingStreet                         = '1 Post Street',
      MailingPostalCode                     = '95113',
      OtherCity                             = 'San Jose',
      OtherCountry                          = 'United States',
      OtherState                            = 'CA',
      OtherStreet                           = '77 Bush Street',
      OtherPostalCode                       = '95126',
      FinServ__MarketingOptOut__c           = false,
      FinServ__CreatedFromLead__c           = false,
      FinServ__EmailVerified__c             = false,
      FinServ__FaxVerified__c               = false,
      FinServ__HomePhoneVerified__c         = false,
      FinServ__PrimaryAddressIsBilling__c   = false,
      FinServ__PrimaryAddressIsMailing__c   = false,
      FinServ__PrimaryAddressIsOther__c     = false,
      FinServ__PrimaryAddressIsShipping__c  = false
    ));

    // Insert the Contact Objects
    INSERT demoContactMap.values();

    // Add any Contacts that were created via the Demo Person Accounts to this map.
    demoContactMap.putAll(getContactsForPersonAccounts(demoAccounts));

    // Debug
    System.debug('Ivan Kohl Contact: '    + demoContactMap.get('Ivan_Kohl'));
    System.debug('Neil Symonds Contact: ' + demoContactMap.get('Neil_Symonds'));
    System.debug('Rachel Adams Contact: ' + demoContactMap.get('Rachel_Adams'));
    System.debug('Nigel Adams Contact: '  + demoContactMap.get('Nigel_Adams'));

    // Return the Demo Contacts to the caller
    return demoContactMap;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoFinancialAccounts
   * @param       {Map<String,Account>} demoAccounts  Required. 
   * @returns     {void}
   * @description Creates any required FinServ__FinancialAccount__c demo 
   *              records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Map<String,FinServ__FinancialAccount__c> createDemoFinancialAccounts(Map<String,Account> demoAccounts) {

    // Add a section break to the Debug Log
    System.debug('==================== FinServ__FinancialAccount__c Records ====================');

    // Create and initialize Map collection
    Map<String,FinServ__FinancialAccount__c> demoFinancialAccounts = new Map<String,FinServ__FinancialAccount__c>();

    // Define FinancialAccounts for "Rachel Adams: Savings"
    demoFinancialAccounts.put('Rachel_Adams_Savings', new FinServ__FinancialAccount__c(
      Name                                  = 'Savings Account (Sample)',
      RecordTypeId                          = recordTypes.get('SavingsAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 5570,
      FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('03/28/2010'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountType__c      = 'Savings'
    ));

    // Define FinancialAccounts for "Rachel Adams: Checking"
    demoFinancialAccounts.put('Rachel_Adams_Checking', new FinServ__FinancialAccount__c(
      Name                                  = 'Checking Account (Sample)',
      RecordTypeId                          = recordTypes.get('CheckingAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 7106.57,
      FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('06/09/2001'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      FinServ__Status__c                    = 'Open',
      FinServ__FinancialAccountType__c      = 'Checking'
    ));

    // Define FinancialAccounts for "Neil Symonds: Investment"
    demoFinancialAccounts.put('Neil_Symonds_Investment', new FinServ__FinancialAccount__c(
      Name                                  = 'Investment Account (Sample)',
      RecordTypeId                          = recordTypes.get('InvestmentAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Neil_Symonds').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Symonds_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 324700,
      //FinServ__BalanceLastStatement__c      = 0,
      //FinServ__OpenDate__c                  = Date.parse('06/09/2001'), // Not in original data
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth', // Not in original data
      FinServ__Managed__c                   = true,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth', // Not in original data
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open',
      FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__TimeHorizon__c               = 'Long Term', // Not in original data
      FinServ__FinancialAccountType__c      = 'Discount Brokerage'
    ));

    // Define FinancialAccounts for "Adams Household: Personal Loan"
    demoFinancialAccounts.put('Adams_Household_PersonalLoan', new FinServ__FinancialAccount__c(
      Name                                  = 'Personal Loan (Sample)',
      RecordTypeId                          = recordTypes.get('LoanAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__JointOwner__c                = demoAccounts.get('Nigel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 12377.65,
      FinServ__BalanceLastStatement__c      = 550,
      FinServ__OpenDate__c                  = Date.parse('03/29/2017'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      FinServ__LoanTermMonths__c            = 36,
      FinServ__Managed__c                   = true,
      FinServ__MinimumBalance__c            = 0,
      FinServ__MinimumPayment__c            = 550,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Joint',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0
      //FinServ__FinancialAccountSource__c    = 'Integrator',
      //FinServ__Status__c                    = 'Open',
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__FinancialAccountType__c      = 'Discount Brokerage'
    ));

    // Define FinancialAccounts for "Adams Household: Cash Account"
    demoFinancialAccounts.put('Adams_Household_CashAccount', new FinServ__FinancialAccount__c(
      Name                                  = 'Cash Account (Sample)',
      RecordTypeId                          = recordTypes.get('BankingAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Adams_Charitable_Trust').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Nigel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 275000,
      //FinServ__BalanceLastStatement__c      = 550,
      //FinServ__OpenDate__c                  = Date.parse('03/29/2017'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__MinimumPayment__c            = 550,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Trust',
      FinServ__PaperlessDelivery__c         = false,
      //FinServ__PaymentAmount__c             = 0
      FinServ__FinancialAccountSource__c    = 'Manual Entry',
      FinServ__Status__c                    = 'Open',
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      FinServ__FinancialAccountType__c      = 'Cash Management Account'
    ));

    // Define FinancialAccounts for "Adams Household: HELOC Account"
    demoFinancialAccounts.put('Adams_Household_HELOCAccount', new FinServ__FinancialAccount__c(
      Name                                  = 'HELOC Account (Sample)',
      RecordTypeId                          = recordTypes.get('HELOC_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 7100,
      FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('03/30/2013'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Joint',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Manual Entry',
      FinServ__Status__c                    = 'Open',
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      FinServ__FinancialAccountType__c      = 'Cash Management Account',
      FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: Townhome Loan"
    demoFinancialAccounts.put('Adams_Household_TownhomeLoan', new FinServ__FinancialAccount__c(
      Name                                  = 'Townhome Loan (Sample)',
      RecordTypeId                          = recordTypes.get('Mortgage_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 25080,
      FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('04/05/2000'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      //FinServ__FinancialAccountSource__c    = 'Manual Entry',
      FinServ__Status__c                    = 'Open'
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__FinancialAccountType__c      = 'Cash Management Account',
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: Investment Account"
    demoFinancialAccounts.put('Adams_Household_InvestmentAccount', new FinServ__FinancialAccount__c(
      Name                                  = 'Investment Account (Sample)',
      RecordTypeId                          = recordTypes.get('InvestmentAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 895000,
      //FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('11/26/2012'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__Managed__c                   = true,
      FinServ__MinimumBalance__c            = 0,
      FinServ__ModelPortfolio__c            = 'Growth',
      //FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open',
      FinServ__TaxStatus__c                 = 'Nonqualified',
      FinServ__TimeHorizon__c               = 'Long Term',
      FinServ__FinancialAccountType__c      = 'Brokerage'
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: Credit Card"
    demoFinancialAccounts.put('Adams_Household_CreditCard', new FinServ__FinancialAccount__c(
      Name                                  = 'Credit Card (Sample)',
      RecordTypeId                          = recordTypes.get('CreditCard_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 3200,
      FinServ__BalanceLastStatement__c      = 3550,
      FinServ__OpenDate__c                  = Date.parse('07/07/2013'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth',
      FinServ__MinimumPayment__c            = 35,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open',
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__TimeHorizon__c               = 'Long Term',
      FinServ__FinancialAccountType__c      = 'Credit Card'
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: New Car Loan"
    demoFinancialAccounts.put('Adams_Household_NewCarLoan', new FinServ__FinancialAccount__c(
      Name                                  = 'New Car Loan (Sample)',
      RecordTypeId                          = recordTypes.get('AutoLoan_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 6476.99,
      FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('08/29/2014'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth',
      FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__PaymentAmount__c             = 0,
      //FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open'
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__TimeHorizon__c               = 'Long Term',
      //FinServ__FinancialAccountType__c      = 'Credit Card'
      //FinServ__Type__c                      = 'Single Family home'
    ));    

    // Define FinancialAccounts for "Adams Household: Bank of BAS Checking"
    demoFinancialAccounts.put('Adams_Household_BankOfBAS', new FinServ__FinancialAccount__c(
      Name                                  = 'Bank of BAS Checking Account (Sample)',
      RecordTypeId                          = recordTypes.get('BankingAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 100000,
      //FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('09/08/2016'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = true,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth',
      //FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      //FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open',
      FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__TimeHorizon__c               = 'Long Term',
      FinServ__FinancialAccountType__c      = 'Checking'
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: Nigel's Investment Account"
    demoFinancialAccounts.put('Adams_Household_NigelsInvestmentAccount', new FinServ__FinancialAccount__c(
      Name                                  = 'Nigel\'s Investment Account (Sample)',
      RecordTypeId                          = recordTypes.get('InvestmentAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Nigel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Adams_Charitable_Trust').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 300000,
      //FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('02/15/2018'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__Managed__c                   = true,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth',
      //FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Joint',
      FinServ__PaperlessDelivery__c         = false,
      //FinServ__PaymentAmount__c             = 0,
      //FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open',
      FinServ__TaxStatus__c                 = 'Qualified',
      //FinServ__TimeHorizon__c               = 'Long Term',
      FinServ__FinancialAccountType__c      = 'Brokerage'
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: Mutual Fund Investment"
    demoFinancialAccounts.put('Adams_Household_MutualFundInvestment', new FinServ__FinancialAccount__c(
      Name                                  = 'Mutual Fund Investment (Sample)',
      RecordTypeId                          = recordTypes.get('InvestmentAccount_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__JointOwner__c                = demoAccounts.get('Neil_Symonds').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      FinServ__Balance__c                   = 142000,
      //FinServ__BalanceLastStatement__c      = 0,
      FinServ__OpenDate__c                  = Date.parse('07/11/2014'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = true,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth',
      //FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Joint',
      FinServ__PaperlessDelivery__c         = false,
      //FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Integrator',
      FinServ__Status__c                    = 'Open',
      FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__TimeHorizon__c               = 'Long Term',
      FinServ__FinancialAccountType__c      = 'Mutual Fund'
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Define FinancialAccounts for "Adams Household: Life Insurance"
    demoFinancialAccounts.put('Adams_Household_LifeInsurance', new FinServ__FinancialAccount__c(
      Name                                  = 'Life Insurance $2M (Sample)',
      RecordTypeId                          = recordTypes.get('InsurancePolicy_FinServ__FinancialAccount__c').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__JointOwner__c                = demoAccounts.get('Neil_Symonds').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__AssetRebalance__c            = false,
      FinServ__AverageBalance__c            = 0,
      //FinServ__Balance__c                   = 142000,
      //FinServ__BalanceLastStatement__c      = 0,
      //FinServ__OpenDate__c                  = Date.parse('07/11/2014'),
      FinServ__Discretionary__c             = false,
      FinServ__HeldAway__c                  = false,
      //FinServ__LoanTermMonths__c            = 36,
      //FinServ__InvestmentObjectives__c      = 'Growth',
      FinServ__InsuredAmount__c             = 2000000,
      FinServ__Managed__c                   = false,
      FinServ__MinimumBalance__c            = 0,
      //FinServ__ModelPortfolio__c            = 'Growth',
      //FinServ__MinimumPayment__c            = 0,
      FinServ__OverdraftAllowed__c          = false,
      FinServ__Ownership__c                 = 'Individual',
      FinServ__PaperlessDelivery__c         = false,
      FinServ__Premium__c                   = 3000,
      //FinServ__PaymentAmount__c             = 0,
      FinServ__FinancialAccountSource__c    = 'Manual Entry',
      FinServ__Status__c                    = 'Open',
      //FinServ__TaxStatus__c                 = 'Nonqualified',
      //FinServ__TimeHorizon__c               = 'Long Term',
      FinServ__FinancialAccountType__c      = 'Individual Life'
      //FinServ__Type__c                      = 'Single Family home'
    ));

    // Insert the AccountContactRelation Objects
    INSERT demoFinancialAccounts.values();

    // Debug
    System.debug('Rachel Adams: Savings - Financial Account: '                + demoFinancialAccounts.get('Rachel_Adams_Savings'));
    System.debug('Rachel Adams: Checking - Financial Account: '               + demoFinancialAccounts.get('Rachel_Adams_Checking'));
    System.debug('Neil Symonds: Investment - Financial Account: '             + demoFinancialAccounts.get('Neil_Symonds_Investment'));
    System.debug('Adams Household: Personal Loan - Financial Account: '       + demoFinancialAccounts.get('Adams_Household_PersonalLoan'));
    System.debug('Adams Household: Cash Account - Financial Account: '        + demoFinancialAccounts.get('Adams_Household_CashAccount'));
    System.debug('Adams Household: HELOC Account - Financial Account: '       + demoFinancialAccounts.get('Adams_Household_HELOCAccount'));
    System.debug('Adams Household: Townhome Loan - Financial Account: '       + demoFinancialAccounts.get('Adams_Household_TownhomeLoan'));
    System.debug('Adams Household: Investment Account - Financial Account: '  + demoFinancialAccounts.get('Adams_Household_InvestmentAccount'));
    System.debug('Adams Household: Credit Card - Financial Account: '         + demoFinancialAccounts.get('Adams_Household_CreditCard'));
    System.debug('Adams Household: Credit Card - New Car Loan: '              + demoFinancialAccounts.get('Adams_Household_NewCarLoan'));
    System.debug('Adams Household: Bank of BAS Checking: '                    + demoFinancialAccounts.get('Adams_Household_BankOfBAS'));
    System.debug('Adams Household: Nigel\'s Investment Account: '             + demoFinancialAccounts.get('Adams_Household_NigelsInvestmentAccount'));
    System.debug('Adams Household: Mutual Fund Investment: '                  + demoFinancialAccounts.get('Adams_Household_MutualFundInvestment'));
    System.debug('Adams Household: Life Insurance: '                          + demoFinancialAccounts.get('Adams_Household_LifeInsurance'));

    // Done! Return the map to caller.
    return demoFinancialAccounts;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoFinancialGoals
   * @param       {Map<String,Account>}  demoAccounts  Required. 
   * @returns     {void}
   * @description Creates any required FinServ__FinancialGoal__c demo records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void createDemoFinancialGoals(Map<String,Account> demoAccounts) {

    // Add a section break to the Debug Log
    System.debug('==================== FinServ__FinancialGoal__c Records ====================');

    // Create and initialize the Map collection for our Financial Goals.
    Map<String, FinServ__FinancialGoal__c> demoFinancialGoals = new Map<String, FinServ__FinancialGoal__c>();

    
//      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
//      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      System.debug(demoAccounts.get('Rachel_Adams'));
      System.debug(demoAccounts.get('Adams_Household'));
    // Define Financail Goals record for "Adams Household - Tahoe Vacation Home"
    demoFinancialGoals.put('Adams_Household_TahoeVacationHome', new FinServ__FinancialGoal__c(
      Name                                  = 'Tahoe Vacation Home (Sample)',
      FinServ__ActualValue__c               = 280000,
      //FinServ__Description__c               = '?????',
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      //FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__Status__c                    = 'In Progress',
      FinServ__TargetDate__c                = Date.parse('12/04/2020'),
      FinServ__TargetValue__c               = 450000,
      FinServ__Type__c                      = 'Home Purchase'
    ));
    //*/
    /*
    // Define Financail Goals record for "Adams Household - Laura's Wedding"
    demoFinancialGoals.put('Adams_Household_LaurasWedding', new FinServ__FinancialGoal__c(
      Name                                  = 'Laura\'s Wedding Fund (Sample)',
      FinServ__ActualValue__c               = 67000,
      FinServ__Description__c               = 'Laura is Rachel\'s niece',
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__Status__c                    = 'In Progress',
      FinServ__TargetDate__c                = Date.parse('12/04/2019'),
      FinServ__TargetValue__c               = 100000,
      FinServ__Type__c                      = 'Other'
    ));
    //*/
    
    // Define Financail Goals record for "Adams Household - Matts Education"
    demoFinancialGoals.put('Adams_Household_MattsEducation', new FinServ__FinancialGoal__c(
      Name                                  = 'Education Savings for Matt (Sample)',
      FinServ__ActualValue__c               = 75000,
      //FinServ__Description__c               = '????',
      FinServ__PrimaryOwner__c              = demoAccounts.get('Nigel_Adams').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__Status__c                    = 'In Progress',
      FinServ__TargetDate__c                = Date.parse('12/04/2020'),
      FinServ__TargetValue__c               = 300000,
      FinServ__Type__c                      = 'Education'
    ));
    //*/ 
    
    
    // Define Financail Goals record for "Adams Household - Retirement Goals"
    demoFinancialGoals.put('Adams_Household_RetirementGoals', new FinServ__FinancialGoal__c(
      Name                                  = 'Retirement Goals (Sample)',
      FinServ__ActualValue__c               = 532000,
      //FinServ__Description__c               = '????',
      FinServ__PrimaryOwner__c              = demoAccounts.get('Neil_Symonds').id,
      FinServ__Household__c                 = demoAccounts.get('Symonds_Household').id,
      FinServ__Status__c                    = 'In Progress',
      FinServ__TargetDate__c                = Date.parse('08/23/2018'),
      FinServ__TargetValue__c               = 540000,
      FinServ__Type__c                      = 'Retirement'
    ));
    //*/

    // Insert the Asset and Liability Objects
    INSERT demoFinancialGoals.values();

    // Debug
    System.debug('Adams Household - Tahoe Vacation Home - Financial Goals: '  + demoFinancialGoals.get('Adams_Household_TahoeVacationHome'));
    System.debug('Adams Household - Laura\'s Wedding - Financial Goals: '     + demoFinancialGoals.get('Adams_Household_LaurasWedding'));
    System.debug('Adams Household - Matt\'s Education - Financial Goals: '    + demoFinancialGoals.get('Adams_Household_MattsEducation'));
    System.debug('Adams Household - Retirement Goals - Financial Goals: '     + demoFinancialGoals.get('Adams_Household_RetirementGoals'));

    return;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoFinancialHoldings
   * @param       {Map<String,Account>} demoAccounts  Required.
   * @param       {Map<String,FinServ__FinancialAccount__c>} demoFinancialAccounts  Required.
   * @param       {Map<String,FinServ__Securities__c>}  demoSecurities  Required.
   * @returns     {void}
   * @description Creates any required FinServ__FinancialHolding__c demo records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void createDemoFinancialHoldings( Map<String,Account>                       demoAccounts, 
                                                  Map<String,FinServ__FinancialAccount__c>  demoFinancialAccounts,
                                                  Map<String,FinServ__Securities__c>        demoSecurities) {

    // Add a section break to the Debug Log
    System.debug('==================== FinServ__FinancialHolding__c Records ====================');

    // Create and initialize the Map collection for our Securities.
    Map<String, FinServ__FinancialHolding__c> demoFinancialHoldings = new Map<String, FinServ__FinancialHolding__c>();

    //*
    // Define Financial Holding record for "Adams Household - CRM Holding R/A (Sample)"
    demoFinancialHoldings.put('Adams_Household_CRMHolding', new FinServ__FinancialHolding__c(
      Name                                  = 'CRM Holding R/A (Sample)',
      FinServ__FinancialAccount__c          = demoFinancialAccounts.get('Adams_Household_InvestmentAccount').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__Securities__c                = demoSecurities.get('CRM_Security').id,
      FinServ__AssetCategory__c             = 'U.S. Equity',
      FinServ__AssetCategoryName__c         = 'Large Growth',
      FinServ__AssetClass__c                = 'Equities',
      FinServ__LastUpdated__c               = Date.parse('12/03/2018'),
      FinServ__MarketValue__c               = 138130,
      FinServ__Price__c                     = 69.09,
      FinServ__Shares__c                    = 2000
    ));
    //*/
    //*
    // Define Financial Holding record for "Adams Household - AAPL Holding R/A (Sample)"
    demoFinancialHoldings.put('Adams_Household_AAPLHolding', new FinServ__FinancialHolding__c(
      Name                                  = 'AAPL Holding R/A (Sample)',
      FinServ__FinancialAccount__c          = demoFinancialAccounts.get('Adams_Household_InvestmentAccount').id,
      FinServ__Household__c                 = demoAccounts.get('Adams_Household').id,
      FinServ__PrimaryOwner__c              = demoAccounts.get('Rachel_Adams').id,
      FinServ__Securities__c                = demoSecurities.get('AAPL_Security').id,
      FinServ__AssetCategory__c             = 'U.S. Equity',
      FinServ__AssetCategoryName__c         = 'Large Growth',
      FinServ__AssetClass__c                = 'Equities',
      FinServ__LastUpdated__c               = Date.parse('12/03/2018'),
      FinServ__MarketValue__c               = 17514,
      FinServ__Price__c                     = 116.76,
      FinServ__Shares__c                    = 150
    ));
    //*/

    // Insert the Securities Objects
    INSERT demoFinancialHoldings.values();

    // Debug
    System.debug('Adams Household Holding CRM - Financial Holdings: '   + demoFinancialHoldings.get('Adams_Household_CRMHolding'));
    System.debug('Adams Household Holding AAPL - Financial Holdings: '  + demoFinancialHoldings.get('Adams_Household_AAPLHolding'));

    return;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      createDemoSecurities
   * @returns     {Map<String,FinServ__Securities__c>}
   * @description Creates any required FinServ__Securities__c demo records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Map<String,FinServ__Securities__c> createDemoSecurities() {

    // Add a section break to the Debug Log
    System.debug('==================== FinServ__Securities__c Records ====================');

    // Create and initialize the Map collection for our Securities.
    Map<String, FinServ__Securities__c> demoSecurities = new Map<String, FinServ__Securities__c>();

    //*
    // Define Securities record for "CRM"
    demoSecurities.put('CRM_Security', new FinServ__Securities__c(
      Name                                  = 'CRM',
      FinServ__AssetCategory__c             = 'U.S. Equity',
      FinServ__AssetCategoryName__c         = 'Large Blend',
      FinServ__AssetClass__c                = 'Equities',
      FinServ__CUSIP__c                     = '79466L302',
      FinServ__Exchange__c                  = 'NYSE',
      FinServ__LastUpdated__c               = Date.parse('12/03/2018'),
      FinServ__Price__c                     = 69.09,
      FinServ__SecuritiesName__c            = 'Salesforce.com Inc (Sample)'
    ));
    //*/
    //*
    // Define Securities record for "AAPL"
    demoSecurities.put('AAPL_Security', new FinServ__Securities__c(
      Name                                  = 'AAPL',
      FinServ__AssetCategory__c             = 'U.S. Equity',
      FinServ__AssetCategoryName__c         = 'Large Value',
      FinServ__AssetClass__c                = 'Equities',
      FinServ__CUSIP__c                     = '037833100',
      FinServ__Exchange__c                  = 'NASDAQ',
      FinServ__LastUpdated__c               = Date.parse('12/03/2018'),
      FinServ__Price__c                     = 116.76,
      FinServ__SecuritiesName__c            = 'Apple Inc (Sample)'
    ));
    //*/

    // Insert the Securities Objects
    INSERT demoSecurities.values();

    // Debug
    System.debug('CRM - Securities: '   + demoSecurities.get('CRM_Security'));
    System.debug('AAPL - Securities: '  + demoSecurities.get('AAPL_Security'));

    return demoSecurities;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      getAccountRecipricolRoleRecordTypeId
   * @returns     {Id}
   * @description Returns the Record Type ID for Account-Based Recipricol Roles.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Id getAccountRecipricolRoleRecordTypeId() {

    // Determine the Record Type ID for Person Accounts in this org.
    return '012L0000000I0mFIAS';
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      getContactRecipricolRoleRecordTypeId
   * @returns     {Id}
   * @description Returns the Record Type ID for Contact-Based Recipricol Roles.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Id getContactRecipricolRoleRecordTypeId() {

    // Determine the Record Type ID for Person Accounts in this org.
    return '012L0000000I0mGIAS';
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      getPersonAccountRecordTypeId
   * @returns     {Id}
   * @description Returns the Record Type ID for Person Accounts in this org.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static String getPersonAccountRecordTypeId() {

    // Determine the Record Type ID for Person Accounts in this org.
    return '012L0000000I0leIAC';
  }  

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      getContactsForPersonAccounts
   * @param       {Map<String,Account}  demoAccounts  Required. 
   * @returns     {Map<String,Contact}
   * @description Finds the Contacts created via Person Accounts.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Map<String,Contact> getContactsForPersonAccounts(Map<String,Account> demoAccounts) {

    // Build the list of Account IDs
    List<Id> AccountIds = new List<Id> {
      demoAccounts.get('Rachel_Adams').Id,
      demoAccounts.get('Nigel_Adams').Id,
      demoAccounts.get('Neil_Symonds').Id
    };

    // Fetch the Contacts
    List<Contact> personContacts = [
      SELECT 
        Name,
        AccountId,
        Id
      FROM 
        Contact
      WHERE 
        AccountId IN :AccountIds
    ];

    // Declare a Map to hold the Contacts we find
    Map<String,Contact> demoContacts = new Map<String,Contact>();

    // Put each Contact into the return map using the correct Key.
    for (Contact personContact : personContacts) {
      if (demoAccounts.get('Rachel_Adams').Id == personContact.AccountId) {
        demoContacts.put('Rachel_Adams', personContact);
      }
      else if (demoAccounts.get('Nigel_Adams').Id == personContact.AccountId) {
        demoContacts.put('Nigel_Adams', personContact);
      }
      else if (demoAccounts.get('Neil_Symonds').Id == personContact.AccountId) {
        demoContacts.put('Neil_Symonds', personContact);
      }
    }

    // Debug
    System.debug('Demo Contacts:' + demoContacts);

    // Return the found Contacts to the Caller
    return demoContacts;
  }

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      getFscRecordTypeIds
   * @returns     {Map<String,RecordType>}
   * @description Finds the Record Type IDs for ALL FSC records.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static Map<String,RecordType> getFscRecordTypeIds() {

    // Declare and init a Map to store record types.
    Map<String,RecordType> fscRecordTypesMap = new Map<String,RecordType>();

    // Query for details of all FSC (FinServ) record types.
    List<RecordType> fscRecordTypes = [
      SELECT Name, Id, NamespacePrefix, DeveloperName, SObjectType 
      FROM RecordType
      WHERE NamespacePrefix = 'FinServ' OR DeveloperName = 'PersonAccount'
    ];

    // Process the list of records into a Map for easy access
    for (RecordType fscRecordType : fscRecordTypes) {
      fscRecordTypesMap.put(fscRecordType.DeveloperName + '_' + fscRecordType.SObjectType, fscRecordType);
    }

    // Debug
    System.debug('FSC Record Types Map: ' + fscRecordTypesMap);

    return fscRecordTypesMap;
  }
}