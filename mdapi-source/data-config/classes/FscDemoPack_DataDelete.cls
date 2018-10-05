//─────────────────────────────────────────────────────────────────────────────────────────────────┐
/**
 * @class       FscDemoPack_DataDelete
 * @description Implements a collection of static methods that can be used to delete demo data.
 * @version     1.0.0
 * @public
 */
//─────────────────────────────────────────────────────────────────────────────────────────────────┘
public class FscDemoPack_DataDelete {

  //───────────────────────────────────────────────────────────────────────────┐
  /**
   * @method      deleteDemoData
   * @returns     {void}
   * @description Deletes all demo data from the org.
   * @version     1.0.0
   * @public @static
   */
  //───────────────────────────────────────────────────────────────────────────┘
  public static void deleteDemoData() {
    // List of Account Names for Demo Accounts
    List<String> demoAcctNames = new List<String>{
      'Symonds Household (Sample)',
      'Smith, Kohl and Company (Sample)',
      'Adams Charitable Trust (Sample)',
      'Adams Household (Sample)'
    };

    // Deactivate then DELETE all Rollup by Lookup Filter Configs
    Map<Id,FinServ__RollupByLookupConfig__c> rollupByLookupFilterConfig = new Map<Id,FinServ__RollupByLookupConfig__c>([
      SELECT Id FROM FinServ__RollupByLookupConfig__c 
    ]);
    for (FinServ__RollupByLookupConfig__c rblConfig : rollupByLookupFilterConfig.values()) {
      rblConfig.FinServ__Active__c = false;
    }
    UPDATE rollupByLookupFilterConfig.values();
    DELETE rollupByLookupFilterConfig.values();

    // Delete Financial Accounts
    Map<Id,FinServ__FinancialAccount__c> financialAccountsToDelete = new Map<Id,FinServ__FinancialAccount__c>([
      SELECT Id FROM FinServ__FinancialAccount__c 
      WHERE FinServ__PrimaryOwner__r.Name LIKE 'Symonds%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Smith%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Adams%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Neil%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Rachel%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Nigel%'
    ]);
    DELETE financialAccountsToDelete.values();

    // Delete Assets & Liabilities
    Map<Id,FinServ__AssetsAndLiabilities__c> assetsAndLiabilitiesToDelete = new Map<Id,FinServ__AssetsAndLiabilities__c>([
      SELECT Id FROM FinServ__AssetsAndLiabilities__c 
      WHERE FinServ__PrimaryOwner__r.Name LIKE 'Symonds%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Smith%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Adams%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Neil%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Rachel%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Nigel%'
    ]);
    DELETE assetsAndLiabilitiesToDelete.values();

    // Delete Financial Goals
    Map<Id,FinServ__FinancialGoal__c> financialGoalsToDelete = new Map<Id,FinServ__FinancialGoal__c>([
      SELECT Id FROM FinServ__FinancialGoal__c 
      WHERE FinServ__PrimaryOwner__r.Name LIKE 'Symonds%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Smith%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Adams%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Neil%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Rachel%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Nigel%'
    ]);
    DELETE financialGoalsToDelete.values();

    // Delete Financial Holdings
    Map<Id,FinServ__FinancialHolding__c> financialHoldingsToDelete = new Map<Id,FinServ__FinancialHolding__c>([
      SELECT Id FROM FinServ__FinancialHolding__c 
      WHERE FinServ__PrimaryOwner__r.Name LIKE 'Symonds%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Smith%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Adams%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Neil%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Rachel%'
        OR  FinServ__PrimaryOwner__r.Name LIKE 'Nigel%'
    ]);
    DELETE financialHoldingsToDelete.values();

    // Delete Securities
    Map<Id,FinServ__Securities__c> securitiesToDelete = new Map<Id,FinServ__Securities__c>([
      SELECT Id FROM FinServ__Securities__c 
      WHERE Name LIKE 'CRM%'
        OR  Name LIKE 'AAPL%'
    ]);
    DELETE securitiesToDelete.values();

    // Delete Accounts
    Map<Id,Account> accountsToDelete = new Map<Id,Account>([
      SELECT Id FROM Account 
      WHERE Name LIKE 'Symonds%'
        OR  Name LIKE 'Smith%'
        OR  Name LIKE 'Adams%'
        OR  Name LIKE 'Neil%'
        OR  Name LIKE 'Rachel%'
        OR  Name LIKE 'Nigel%'
    ]);
    DELETE accountsToDelete.values();

    // Done
    return;
  }
}