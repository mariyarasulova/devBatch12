public  class AccountTriggerHundler {
   public static void updateAccountDescription(list <account> accTriggerNew,list<account> accTriggerOld,Map<id, account> accTriggerOldMap,Map<id, account> accTriggerNewMap){
    for(Account eachAcc : accTriggerNew ){
        boolean updateDesc = false;
        if(Trigger.isInsert && eachAcc.active__c =='Yes'){
            updateDesc = true;
        }
        if(Trigger.isUpdate){
            Account oldAcc = accTriggerOldMap.get(eachAcc.Id);
            Account newAcc = accTriggerNewMap.get(eachAcc.Id);
            if(eachAcc.Active__c =='Yes' && oldAcc.Active__c != newAcc.Active__c){
                updateDesc = true;
            }
        }
        if(updateDesc){
            eachAcc.Description = 'Account is now active. Enjoy, celebrate,have fun!!!';
        }
        }
   }
}
