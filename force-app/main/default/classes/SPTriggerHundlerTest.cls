@isTest
public class SPTriggerHundlerTest {
    @isTest
    private static void testSPFuture1(){
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'SP Test 1';
        sp1.Status__c = 'New';
        sp1.description__c = 'test';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'SP Test 2';
        sp2.Status__c = 'New';
        sp2.description__c = 'test';

        list<Salesforce_Project__c> insSP = new list<Salesforce_Project__c>{sp1, sp2};
        insert insSP;

        set<id> setSPIds = new set<id>{sp1.id, sp2.id};

        Test.startTest();
        SalesforceProjectTriggerHandler.updateprojectDescription(setSPIds);
        Test.stopTest();

        list<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c];
        system.assert(allSP[0].description__c.contains('future'));
    }
    if(Trigger.isAfter && trigger.isUpdate){

    }
}
