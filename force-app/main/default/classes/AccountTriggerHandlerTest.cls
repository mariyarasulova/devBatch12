@isTest
public  class AccountTriggerHandlerTest {
   @isTest
   private static void testUpdateDescription(){
    Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';
    
        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'Yes';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
    
        List<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        Account checkInsertYes = [select id, name, active__c from account where id =: acc2.id];
        system.assertEquals('Account is now active. Enjoy, celebrate,have fun!!!' +checkInsertYes.Description);
        for(account a : listAcc){
            a.Active__c = 'Yes';

        }
        update listAcc;
        list<account> allAcc = [select id, name, active__c, Description from account];
        system.assertEquals('Account is now active. Enjoy, celebrate,have fun!!!' + allAcc[0].Description);
   } 
}
