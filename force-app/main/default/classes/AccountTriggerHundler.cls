public   class AccountTriggerHundler {
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

   public static void updateVIPforContacts(list <a ccount> accTriggerNew,list<account> accTriggerOld,Map<id, account> accTriggerOldMap,Map<id, account> accTriggerNewMap){
    
    set<id> setAccIDs = new set<id>();
    for(account eachAcc :accTriggerNew){
        if(eachAcc.VIP__c !=accTriggerOldMap.get(eachAcc.id).VIP__c){
            setAccIDs.add(eachAcc.id);
        }
    }
    list<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in : setAccIDs];
    if(!listContacts.isEmpty()){
    for(contact eachContact : listContacts){
        boolean accVIP = accTriggerNewMap.get(eachContact.Account.Id).VIP__c;
        eachContact.VIP__c = accVIP;
    }


update listContacts;
   }
}
}