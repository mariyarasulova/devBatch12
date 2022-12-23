trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
/*map<id, contact> cntmap = new Map <id, contact>();
list<account>updateAccList = new list <account>();
for(contact eachCnt : trigger.new){
    cntMap.put(eachCnt.accountId,eachCnt);
}

list<account>accList = [select id, phone from account where id =: cntMap.keySet()];
for(account eachAcc : accList){
    eachAcc.Phone = cntMap.get(eachAcc.id).phone;
    updateAccList.add(eachAcc);
}
 update updateAccList;*/



    if(trigger.isBefore){
        if(trigger.isUpdate){
            system.debug('we are in before update trigger');
            ContactTriggerHandlet.contactUpdatevalidation1(Trigger.New, Trigger.Old,Trigger.NewMap, Trigger.OldMap );
            ContactTriggerHandlet.contactUpdatevalidation2(Trigger.New, Trigger.Old,Trigger.NewMap, Trigger.OldMap );

        }
    }
}











/*system.debug('we are in BEFORE trigger.');


if(trigger.isInsert){
    system.debug( 'we are in BEFORE insert Trigger.');
}
    if(trigger.isUpdate){
        system.debug( 'we are in BEFORE Update Trigger.'); 
    }
}


if(trigger.isAfter){
    system.debug( 'we are in AFTER Trigger.'); 

if(trigger.isInsert){
    system.debug( 'we are in AFTER Insert Trigger.'); 
}
if(trigger.isUpdate){
    system.debug( 'we are in AFTER  Update Trigger.'); 
}

}*/
