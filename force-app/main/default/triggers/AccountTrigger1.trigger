trigger AccountTrigger1 on Account (before insert, before update, after insert, after update) {

list<account> newAccounts = trigger.new;
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
}





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
}