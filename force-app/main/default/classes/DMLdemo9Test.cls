@isTest
public  class DMLdemo9Test {
    @isTest
    private static void dmlInsert1Test(){
        DMLDemo9.dmlInsertDemo_stndObj();
        list<account> listAcc = [select id, name from account where name = 'SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);

    }
    @isTest
    private static void dmlInsert4test(){
Account acc = new account();
acc.name = 'SoftInnovas Inc.';
insert acc;
DMLDemo9.dmlInsertDemo_4();
list<contact>allContacts = [select id, name, LastName from contact where LastName = 'Biden'];
system.assertEquals('Biden',allContacts[0].LastName);
    }
    @isTest
    private static void dmlInsert5test(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'SP TEST';
        sp.Status__c = 'New';
        insert sp;
        DMLDemo9.dmlInsertDemo_5();
        List<Salesforce_Ticket__c> listST =[select id, Subject__c, Salesforce_Project__c from Salesforce_Ticket__c where Subject__c = 'Learn apex dml'];
        system.assertEquals(sp.Id, listST[0].Salesforce_Project__c);  
    }
}
