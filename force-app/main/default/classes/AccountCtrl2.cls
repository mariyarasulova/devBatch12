public with sharing class AccountCtrl2 {
    @AuraEnabled
     public static List<Account> getAccountsByIndustry(String industry){
        return [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE Industry =:industry
                WITH SECURITY_ENFORCED 
                ORDER BY AnnualRevenue DESC];
                
     }
}