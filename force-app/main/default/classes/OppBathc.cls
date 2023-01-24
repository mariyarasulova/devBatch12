public  class OppBathc implements Database.Batchable<sObject>,database.stateful {
    public Integer countRecords = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, name, stageName from opportunity where stageName = 'Closed Lost']);
         return q1;
    }

         public void execute(Database.BatchableContext bc, list<opportunity> scope){
            system.debug('closed lost');
            Database.delete(scope,false);
            countRecords += scope.size();
    }
    public void finish(Database.BatchableContext bc){
        
        system.debug('Number Of records Deleted ' + countRecords);
    }
}
