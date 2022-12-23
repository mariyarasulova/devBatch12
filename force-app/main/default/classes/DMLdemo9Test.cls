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
}
