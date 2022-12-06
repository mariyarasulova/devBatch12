public  class DMLDemo {
    public static void dmlInsertDemo_stnObj(){
// we will create account record using Apex.
//1. create new instance.
account acc = new account();
//set field value
acc.Name = 'SoftInnovas';

//set few other fields here...



//Now comes the DML
insert acc;
system.debug('insert acc; ' + acc);
    }

    public static void dmlInsertDemo_cstObj(){
        Salesforce_project__c spNew = new Salesforce_project__c();
        spNew.project_name__c = 'Teach DML to Batch 12';
        spNew.description__c = 'All of you doing great.';
        insert spNew;
    }
    public static void dmlUpdateDemo_1(){
        account acc = new account();
        acc.name = 'sfdc';
        insert acc;
        acc.name = 'Salesforse Inc.';
        update acc;
    }
}

