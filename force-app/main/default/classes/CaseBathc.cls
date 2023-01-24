public  class CaseBathc implements Database.Batchable<sObject>,database.stateful{
    public Integer countRecords = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, status from Case where status != 'Closed' and LastModifiedDate < LAST_N_DAYS :5]);
         return q1;
    }


    public void execute(Database.BatchableContext bc, list<case> scope){
        system.debug('closed');
        countRecords += scope.size();
        list<task> caseTask = new list<task>();
        DefaultTaskvalue__c Defaultvalue = DefaultTaskvalue__c.getOrgDefaults();
        for(case eachCase: scope){
            task x = new task();
            x.Status = 'In Progress';
            x.Subject = Defaultvalue.subject__c;
            x.Priority = 'High';
            x.WhatId = eachCase.Id;
            x.description = Defaultvalue.comments__c;
            caseTask.add(x);
        }
        insert caseTask;     
}

public void finish(Database.BatchableContext bc){
    system.debug('This is Finish part' + countRecords);

}
}
