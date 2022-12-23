trigger AccountTrigger1 on Account (before insert, before update, after insert, after update) {

if(Trigger.isBefore){
    AccountTriggerHundler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHundler.updateVIPforContacts(trigger.new, trigger.old, trigger.oldMap,trigger.newMap); 
    }
}








/*trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (Trigger.isBefore) {
        Map<id, account> accTriggerOldMap = Trigger.oldMap;
        for (Account eachAccount : Trigger.new) {
            if (Trigger.isInsert && eachAccount.Active__c == 'Yes') {
                eachAccount.Description = 'Account is now Active. Enjoy, celebrate.';
            }
            if (Trigger.isUpdate) {
                //get OldAccount value -> using OldMap
                    //get Old active value
                //get newAccount value -> using NewMap
                    //get new active value
                //check if active field is updated TO Yes.
                Account oldAcc = accTriggerOldMap.get(eachAccount.Id);
                Account newAcc = Trigger.newMap.get(eachAccount.Id);
                if(eachAccount.Active__c == 'Yes' && oldAcc.Active__c != newAcc.Active__c){
                    eachAccount.Description = 'Account is now Active. Enjoy, celebrate.';
                }

            }
        }
    }*/


   /* list<account> newTriggerList = Trigger.new; 
    list<account> oldTriggerList = Trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldmap;

    if(Trigger.isAfter && Trigger.isUpdate){
        set<id> accId = accTriggerNewMap.keySet();
        integer countWebsite = 0;

        for(id eachId : accId){
            system.debug('eachId--> ' +eachId);
            account newAccount = accTriggerNewMap.get(eachId);
            system.debug(' newAccount name--> ' + newAccount.Name);
            string newWebSite = newAccount.Website;

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name--> ' + oldAccount.Name);
            string oldWebSite = OldAccount.Website;

            if(newWebSite != oldWebSite){
                system.debug('Account ' + newAccount.Name + ', new WebSite is '+ newWebSite);
                countWebsite++;
            }
        }
system.debug('# account website updated -->' + countWebsite);

    }*/






/*list<account> newTriggerList = Trigger.new; 
list<account> oldTriggerList = Trigger.old;   
Map<id, account> accTriggerNewMap = trigger.newmap;
Map<id, account> accTriggerOldMap = trigger.oldmap;

if(Trigger.isBefore && Trigger.isInsert){
    system.debug('before insert trigger new' + newTriggerList);
    system.debug('before insert trigger new' + oldTriggerList);
    system.debug('before insert trigger new map: ' + accTriggerNewMap);
    system.debug('before insert trigger old map: ' + accTriggerOldMap);
}

if(Trigger.isAfter && Trigger.isInsert){
    system.debug('after insert trigger new' + newTriggerList);
    system.debug('after insert trigger new' + oldTriggerList);
    system.debug(' after insert trigger new map: ' + accTriggerNewMap);
    system.debug(' after insert trigger old map: ' + accTriggerOldMap);
}


if(Trigger.isBefore && Trigger.isUpdate){
    system.debug('before update trigger new' + newTriggerList);
    system.debug('before update trigger new' + oldTriggerList);
    system.debug(' before update trigger new map: ' + accTriggerNewMap);
    system.debug(' before update insert trigger old map: ' + accTriggerOldMap);
}

if(Trigger.isAfter && Trigger.isUpdate){
    system.debug('after update trigger new' + newTriggerList);
    system.debug('after update trigger new' + oldTriggerList);
    system.debug(' after update trigger new map: ' + accTriggerNewMap);
    system.debug(' after update insert trigger old map: ' + accTriggerOldMap);
}*/







/*if(Trigger.isAfter){
    if(Trigger.isUpdate){
        list<account>AccTriggerOld = trigger.old;
        for(account oldAcc : AccTriggerold){
            System.debug('old acc is = ' + oldAcc.id + ', old acc name is ' +oldAcc.Name );
        }
        list<account>AccTriggerNew = trigger.new;
        for(account newAcc : AccTriggerNew){
            System.debug('new acc is = ' + newAcc.id + ', new acc name is ' +newAcc.Name );
        }
    }
}*/





/*if(trigger.isBefore && trigger.isInsert){
    System.debug('before insert trigger.old is ' + trigger.old);
}
if(trigger.isAfter && trigger.isInsert){
    System.debug('afrer insert trigger.old is ' + trigger.old);
}
if(trigger.isBefore && trigger.isUpdate){
    System.debug('before update trigger.old is ' + trigger.old);
}
if(trigger.isAfter && trigger.isUpdate){
    System.debug('afrer update trigger.old is ' + trigger.old);
}*/



/*list<account> newAccounts = trigger.new;
if(trigger.isBefore && trigger.isInsert){
    system.debug(' BEFORE record in after insert:' +newAccounts);
    system.debug(' BEFORE # of records is' +newAccounts.size());
    for(account eachAcc :newAccounts){
    system.debug(' BEFORE account id is ' + eachacc.id + ', acc name is ' + eachacc.Name);
    }
}

if(trigger.isAfter && trigger.isInsert){
    system.debug(' AFTER record in after insert:' +newAccounts);
    system.debug(' AFTER # of records is' +newAccounts.size());
    for(account eachAcc :newAccounts){
    system.debug(' AFTER account id is ' + eachacc.id + ', acc name is ' + eachacc.Name);
    }
}



if(trigger.isBefore && trigger.isUpdate){
    system.debug(' BEFORE update record in after insert:' +newAccounts);
    system.debug(' BEFORE  update # of records is' +newAccounts.size());
    for(account eachAcc :newAccounts){
    system.debug(' BEFORE account id is ' + eachacc.id + ', acc name is ' + eachacc.Name);
    }
}
if(trigger.isAfter && trigger.isUpdate){
    system.debug(' AFTER update record in after insert:' +newAccounts);
    system.debug(' AFTER update # of records is' +newAccounts.size());
    for(account eachAcc :newAccounts){
    system.debug(' AFTER  update account id is ' + eachacc.id + ', acc name is ' + eachacc.Name);
    }
}*/





/*if(trigger.isAfter && trigger.isInsert){
    system.debug('record in after insert :' + trigger.new)
}*/

/*if(trigger.isBefore && trigger.isUpdate){
    system.debug('account before update trigger called. yeah.'); 
}
if(trigger.isAfter && trigger.isUpdate){
    system.debug('account after update trigger called too. ooh yeaah.');

}*/



   /* if(Trigger.isBefore && Trigger.isInsert){
    system.debug('account before insert trigger called. yeah.');
    }
    if(trigger.isAfter && trigger.isInsert){
    system.debug('account after insert trigger called too. ooh yeaah.');
    }*/

    
   /* if(Trigger.isBefore){
    system.debug('account before insert trigger called');
    }
    if(Trigger.isAfter){
    system.debug('account after insert trigger called');
    }*/
