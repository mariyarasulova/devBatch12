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
    public static void dmlUpdateDemo_3(){
        account acc = [select id, name from account where name = 'SoftInnovas' limit 1];
        acc.name = 'SoftInnovas Inc.';
        update acc;
        system.debug('acc=>' + acc);
    }
    public static void dmlInsertDemo_2(){
        account acc = [select id from account where name = 'SoftInnovas Inc.' limit 1];
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.Id;
        insert cnt;
        system.debug('cnt -->' + cnt);
    }
    public static void dmlUpdate_2_cO(){
        Salesforce_project__c sp = [select id, name from Salesforce_project__c order by createdDate desc limit 1];
        Salesforce_ticket__c st = new salesforce_ticket__c();
        st.Subject__c = 'Learn Apex Dml';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.requested_by_date__c = date.today();
        st.Salesforce_project__c = sp.Id;
        insert st;


    }
    public static void dmlInsertMultiple_right(){
        list<account> listacc = new list<account>();
        account acc1 = new account();
        acc1.name = 'acc bulk 1';
        listacc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc bulk 2';
        listacc.add(acc2);

        account acc3 = new account();
        acc3.name = 'acc bulk 3';
        listacc.add(acc3);

        insert listacc;


    }
    public static void dmlInsertmultiple_right2(){
        list<account> listacc = new list<account>();
        for(integer i= 0; i<155; i++){
            account acc = new account();
            acc.name = 'SoftInnovas v ' + i;
            acc.Active__c = 'Yes';
            listacc.add(acc);
               }
               if(!listacc.isEmpty()){
                insert listacc;
               }
    }

    public static void dmlMultipleRecordUpdate_right(){
        list<account> listAccount =[select id, name, active__c from account];
        list<account> updateAccounts = new list<account>();
        for(account acc : listAccount){
            if(acc.Active__c == 'Yes'){
                acc.Name += ' via B.0'; //name = name + 'via B.0'acc.name = acc.name + B.0
                updateAccounts.add(acc);


            }
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }

    }
}

